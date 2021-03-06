!function (e) {
    "use strict";

    function t(t) {
        var r = t.data;
        t.isDefaultPrevented() || (t.preventDefault(), e(this).ajaxSubmit(r))
    }

    function r(t) {
        var r = t.target, a = e(r);
        if (!a.is("[type=submit],[type=image]")) {
            var n = a.closest("[type=submit]");
            if (0 === n.length) return;
            r = n[0]
        }
        var i = this;
        if (i.clk = r, "image" == r.type) if (void 0 !== t.offsetX) i.clk_x = t.offsetX, i.clk_y = t.offsetY; else if ("function" == typeof e.fn.offset) {
            var o = a.offset();
            i.clk_x = t.pageX - o.left, i.clk_y = t.pageY - o.top
        } else i.clk_x = t.pageX - r.offsetLeft, i.clk_y = t.pageY - r.offsetTop;
        setTimeout(function () {
            i.clk = i.clk_x = i.clk_y = null
        }, 100)
    }

    function a() {
        if (e.fn.ajaxSubmit.debug) {
            var t = "[jquery.form] " + Array.prototype.join.call(arguments, "");
            window.console && window.console.log ? window.console.log(t) : window.opera && window.opera.postError && window.opera.postError(t)
        }
    }

    var n = {};
    n.fileapi = void 0 !== e("<input type='file'/>").get(0).files, n.formdata = void 0 !== window.FormData, e.fn.ajaxSubmit = function (t) {
        function r(t) {
            var r, a, n = e.param(t).split("&"), i = n.length, o = {};
            for (r = 0; r < i; r++) a = n[r].split("="), o[decodeURIComponent(a[0])] = decodeURIComponent(a[1]);
            return o
        }

        function i(r) {
            function n(e) {
                return e.contentWindow ? e.contentWindow.document : e.contentDocument ? e.contentDocument : e.document
            }

            function i() {
                function t() {
                    try {
                        var e = n(v).readyState;
                        a("state = " + e), e && "uninitialized" == e.toLowerCase() && setTimeout(t, 50)
                    } catch (e) {
                        a("Server abort: ", e, " (", e.name, ")"), s(D), T && clearTimeout(T), T = void 0
                    }
                }

                var r = l.attr("target"), i = l.attr("action");
                j.setAttribute("target", p), o || j.setAttribute("method", "POST"), i != f.url && j.setAttribute("action", f.url), f.skipEncodingOverride || o && !/post/i.test(o) || l.attr({
                    encoding: "multipart/form-data",
                    enctype: "multipart/form-data"
                }), f.timeout && (T = setTimeout(function () {
                    y = !0, s(k)
                }, f.timeout));
                var u = [];
                try {
                    if (f.extraData) for (var c in f.extraData) f.extraData.hasOwnProperty(c) && (e.isPlainObject(f.extraData[c]) && f.extraData[c].hasOwnProperty("name") && f.extraData[c].hasOwnProperty("value") ? u.push(e('<input type="hidden" name="' + f.extraData[c].name + '">').attr("value", f.extraData[c].value).appendTo(j)[0]) : u.push(e('<input type="hidden" name="' + c + '">').attr("value", f.extraData[c]).appendTo(j)[0]));
                    f.iframeTarget || (h.appendTo("body"), v.attachEvent ? v.attachEvent("onload", s) : v.addEventListener("load", s, !1)), setTimeout(t, 15), j.submit()
                } finally {
                    j.setAttribute("action", i), r ? j.setAttribute("target", r) : l.removeAttr("target"), e(u).remove()
                }
            }

            function s(t) {
                if (!g.aborted && !F) {
                    try {
                        M = n(v)
                    } catch (e) {
                        a("cannot access response document: ", e), t = D
                    }
                    if (t === k && g) return g.abort("timeout"), void S.reject(g, "timeout");
                    if (t == D && g) return g.abort("server abort"), void S.reject(g, "error", "server abort");
                    if (M && M.location.href != f.iframeSrc || y) {
                        v.detachEvent ? v.detachEvent("onload", s) : v.removeEventListener("load", s, !1);
                        var r, i = "success";
                        try {
                            if (y) throw"timeout";
                            var o = "xml" == f.dataType || M.XMLDocument || e.isXMLDoc(M);
                            if (a("isXml=" + o), !o && window.opera && (null === M.body || !M.body.innerHTML) && --O) return a("requeing onLoad callback, DOM not available"), void setTimeout(s, 250);
                            var u = M.body ? M.body : M.documentElement;
                            g.responseText = u ? u.innerHTML : null, g.responseXML = M.XMLDocument ? M.XMLDocument : M, o && (f.dataType = "xml"), g.getResponseHeader = function (e) {
                                return {"content-type": f.dataType}[e]
                            }, u && (g.status = Number(u.getAttribute("status")) || g.status, g.statusText = u.getAttribute("statusText") || g.statusText);
                            var l = (f.dataType || "").toLowerCase(), c = /(json|script|text)/.test(l);
                            if (c || f.textarea) {
                                var d = M.getElementsByTagName("textarea")[0];
                                if (d) g.responseText = d.value, g.status = Number(d.getAttribute("status")) || g.status, g.statusText = d.getAttribute("statusText") || g.statusText; else if (c) {
                                    var p = M.getElementsByTagName("pre")[0], x = M.getElementsByTagName("body")[0];
                                    p ? g.responseText = p.textContent ? p.textContent : p.innerText : x && (g.responseText = x.textContent ? x.textContent : x.innerText)
                                }
                            } else "xml" == l && !g.responseXML && g.responseText && (g.responseXML = X(g.responseText));
                            try {
                                E = _(g, l, f)
                            } catch (t) {
                                i = "parsererror", g.error = r = t || i
                            }
                        } catch (t) {
                            a("error caught: ", t), i = "error", g.error = r = t || i
                        }
                        g.aborted && (a("upload aborted"), i = null), g.status && (i = g.status >= 200 && g.status < 300 || 304 === g.status ? "success" : "error"), "success" === i ? (f.success && f.success.call(f.context, E, "success", g), S.resolve(g.responseText, "success", g), m && e.event.trigger("ajaxSuccess", [g, f])) : i && (void 0 === r && (r = g.statusText), f.error && f.error.call(f.context, g, i, r), S.reject(g, "error", r), m && e.event.trigger("ajaxError", [g, f, r])), m && e.event.trigger("ajaxComplete", [g, f]), m && !--e.active && e.event.trigger("ajaxStop"), f.complete && f.complete.call(f.context, g, i), F = !0, f.timeout && clearTimeout(T), setTimeout(function () {
                            f.iframeTarget || h.remove(), g.responseXML = null
                        }, 100)
                    }
                }
            }

            var u, c, f, m, p, h, v, g, x, b, y, T, j = l[0], w = !!e.fn.prop, S = e.Deferred();
            if (e("[name=submit],[id=submit]", j).length) return alert('Error: Form elements must not have name or id of "submit".'), S.reject(), S;
            if (r) for (c = 0; c < d.length; c++) u = e(d[c]), w ? u.prop("disabled", !1) : u.removeAttr("disabled");
            if (f = e.extend(!0, {}, e.ajaxSettings, t), f.context = f.context || f, p = "jqFormIO" + (new Date).getTime(), f.iframeTarget ? (b = (h = e(f.iframeTarget)).attr("name")) ? p = b : h.attr("name", p) : (h = e('<iframe name="' + p + '" src="' + f.iframeSrc + '" />')).css({
                position: "absolute",
                top: "-1000px",
                left: "-1000px"
            }), v = h[0], g = {
                aborted: 0,
                responseText: null,
                responseXML: null,
                status: 0,
                statusText: "n/a",
                getAllResponseHeaders: function () {
                },
                getResponseHeader: function () {
                },
                setRequestHeader: function () {
                },
                abort: function (t) {
                    var r = "timeout" === t ? "timeout" : "aborted";
                    if (a("aborting upload... " + r), this.aborted = 1, v.contentWindow.document.execCommand) try {
                        v.contentWindow.document.execCommand("Stop")
                    } catch (e) {
                    }
                    h.attr("src", f.iframeSrc), g.error = r, f.error && f.error.call(f.context, g, r, t), m && e.event.trigger("ajaxError", [g, f, r]), f.complete && f.complete.call(f.context, g, r)
                }
            }, (m = f.global) && 0 == e.active++ && e.event.trigger("ajaxStart"), m && e.event.trigger("ajaxSend", [g, f]), f.beforeSend && !1 === f.beforeSend.call(f.context, g, f)) return f.global && e.active--, S.reject(), S;
            if (g.aborted) return S.reject(), S;
            (x = j.clk) && (b = x.name) && !x.disabled && (f.extraData = f.extraData || {}, f.extraData[b] = x.value, "image" == x.type && (f.extraData[b + ".x"] = j.clk_x, f.extraData[b + ".y"] = j.clk_y));
            var k = 1, D = 2, A = e("meta[name=csrf-token]").attr("content"),
                L = e("meta[name=csrf-param]").attr("content");
            L && A && (f.extraData = f.extraData || {}, f.extraData[L] = A), f.forceSync ? i() : setTimeout(i, 10);
            var E, M, F, O = 50, X = e.parseXML || function (e, t) {
                return window.ActiveXObject ? ((t = new ActiveXObject("Microsoft.XMLDOM")).async = "false", t.loadXML(e)) : t = (new DOMParser).parseFromString(e, "text/xml"), t && t.documentElement && "parsererror" != t.documentElement.nodeName ? t : null
            }, C = e.parseJSON || function (e) {
                return window.eval("(" + e + ")")
            }, _ = function (t, r, a) {
                var n = t.getResponseHeader("content-type") || "", i = "xml" === r || !r && n.indexOf("xml") >= 0,
                    o = i ? t.responseXML : t.responseText;
                return i && "parsererror" === o.documentElement.nodeName && e.error && e.error("parsererror"), a && a.dataFilter && (o = a.dataFilter(o, r)), "string" == typeof o && ("json" === r || !r && n.indexOf("json") >= 0 ? o = C(o) : ("script" === r || !r && n.indexOf("javascript") >= 0) && e.globalEval(o)), o
            };
            return S
        }

        if (!this.length) return a("ajaxSubmit: skipping submit process - no element selected"), this;
        var o, s, u, l = this;
        "function" == typeof t && (t = {success: t}), o = this.attr("method"), (u = (u = "string" == typeof(s = this.attr("action")) ? e.trim(s) : "") || window.location.href || "") && (u = (u.match(/^([^#]+)/) || [])[1]), t = e.extend(!0, {
            url: u,
            success: e.ajaxSettings.success,
            type: o || "GET",
            iframeSrc: /^http/i.test(window.location.href || "") ? "javascript:false" : "about:blank"
        }, t);
        var c = {};
        if (this.trigger("form-pre-serialize", [this, t, c]), c.veto) return a("ajaxSubmit: submit vetoed via form-pre-serialize trigger"), this;
        if (t.beforeSerialize && !1 === t.beforeSerialize(this, t)) return a("ajaxSubmit: submit aborted via beforeSerialize callback"), this;
        var f = t.traditional;
        void 0 === f && (f = e.ajaxSettings.traditional);
        var m, d = [], p = this.formToArray(t.semantic, d);
        if (t.data && (t.extraData = t.data, m = e.param(t.data, f)), t.beforeSubmit && !1 === t.beforeSubmit(p, this, t)) return a("ajaxSubmit: submit aborted via beforeSubmit callback"), this;
        if (this.trigger("form-submit-validate", [p, this, t, c]), c.veto) return a("ajaxSubmit: submit vetoed via form-submit-validate trigger"), this;
        var h = e.param(p, f);
        m && (h = h ? h + "&" + m : m), "GET" == t.type.toUpperCase() ? (t.url += (t.url.indexOf("?") >= 0 ? "&" : "?") + h, t.data = null) : t.data = h;
        var v = [];
        if (t.resetForm && v.push(function () {
            l.resetForm()
        }), t.clearForm && v.push(function () {
            l.clearForm(t.includeHidden)
        }), !t.dataType && t.target) {
            var g = t.success || function () {
            };
            v.push(function (r) {
                var a = t.replaceTarget ? "replaceWith" : "html";
                e(t.target)[a](r).each(g, arguments)
            })
        } else t.success && v.push(t.success);
        t.success = function (e, r, a) {
            for (var n = t.context || this, i = 0, o = v.length; i < o; i++) v[i].apply(n, [e, r, a || l, l])
        };
        var x = e('input[type=file]:enabled[value!=""]', this).length > 0, b = "multipart/form-data",
            y = l.attr("enctype") == b || l.attr("encoding") == b, T = n.fileapi && n.formdata;
        a("fileAPI :" + T);
        var j, w = (x || y) && !T;
        !1 !== t.iframe && (t.iframe || w) ? t.closeKeepAlive ? e.get(t.closeKeepAlive, function () {
            j = i(p)
        }) : j = i(p) : j = (x || y) && T ? function (a) {
            for (var n = new FormData, i = 0; i < a.length; i++) n.append(a[i].name, a[i].value);
            if (t.extraData) {
                var s = r(t.extraData);
                for (var u in s) s.hasOwnProperty(u) && n.append(u, s[u])
            }
            t.data = null;
            var l = e.extend(!0, {}, e.ajaxSettings, t, {
                contentType: !1,
                processData: !1,
                cache: !1,
                type: o || "POST"
            });
            t.uploadProgress && (l.xhr = function () {
                var e = jQuery.ajaxSettings.xhr();
                return e.upload && (e.upload.onprogress = function (e) {
                    var r = 0, a = e.loaded || e.position, n = e.total;
                    e.lengthComputable && (r = Math.ceil(a / n * 100)), t.uploadProgress(e, a, n, r)
                }), e
            }), l.data = null;
            var c = l.beforeSend;
            return l.beforeSend = function (e, t) {
                t.data = n, c && c.call(this, e, t)
            }, e.ajax(l)
        }(p) : e.ajax(t), l.removeData("jqxhr").data("jqxhr", j);
        for (var S = 0; S < d.length; S++) d[S] = null;
        return this.trigger("form-submit-notify", [this, t]), this
    }, e.fn.ajaxForm = function (n) {
        if (n = n || {}, n.delegation = n.delegation && e.isFunction(e.fn.on), !n.delegation && 0 === this.length) {
            var i = {s: this.selector, c: this.context};
            return !e.isReady && i.s ? (a("DOM not ready, queuing ajaxForm"), e(function () {
                e(i.s, i.c).ajaxForm(n)
            }), this) : (a("terminating; zero elements found by selector" + (e.isReady ? "" : " (DOM not ready)")), this)
        }
        return n.delegation ? (e(document).off("submit.form-plugin", this.selector, t).off("click.form-plugin", this.selector, r).on("submit.form-plugin", this.selector, n, t).on("click.form-plugin", this.selector, n, r), this) : this.ajaxFormUnbind().bind("submit.form-plugin", n, t).bind("click.form-plugin", n, r)
    }, e.fn.ajaxFormUnbind = function () {
        return this.unbind("submit.form-plugin click.form-plugin")
    }, e.fn.formToArray = function (t, r) {
        var a = [];
        if (0 === this.length) return a;
        var i = this[0], o = t ? i.getElementsByTagName("*") : i.elements;
        if (!o) return a;
        var s, u, l, c, f, m, d;
        for (s = 0, m = o.length; s < m; s++) if (f = o[s], l = f.name) if (t && i.clk && "image" == f.type) f.disabled || i.clk != f || (a.push({
            name: l,
            value: e(f).val(),
            type: f.type
        }), a.push({name: l + ".x", value: i.clk_x}, {
            name: l + ".y",
            value: i.clk_y
        })); else if ((c = e.fieldValue(f, !0)) && c.constructor == Array) for (r && r.push(f), u = 0, d = c.length; u < d; u++) a.push({
            name: l,
            value: c[u]
        }); else if (n.fileapi && "file" == f.type && !f.disabled) {
            r && r.push(f);
            var p = f.files;
            if (p.length) for (u = 0; u < p.length; u++) a.push({
                name: l,
                value: p[u],
                type: f.type
            }); else a.push({name: l, value: "", type: f.type})
        } else null !== c && void 0 !== c && (r && r.push(f), a.push({
            name: l,
            value: c,
            type: f.type,
            required: f.required
        }));
        if (!t && i.clk) {
            var h = e(i.clk), v = h[0];
            (l = v.name) && !v.disabled && "image" == v.type && (a.push({
                name: l,
                value: h.val()
            }), a.push({name: l + ".x", value: i.clk_x}, {name: l + ".y", value: i.clk_y}))
        }
        return a
    }, e.fn.formSerialize = function (t) {
        return e.param(this.formToArray(t))
    }, e.fn.fieldSerialize = function (t) {
        var r = [];
        return this.each(function () {
            var a = this.name;
            if (a) {
                var n = e.fieldValue(this, t);
                if (n && n.constructor == Array) for (var i = 0, o = n.length; i < o; i++) r.push({
                    name: a,
                    value: n[i]
                }); else null !== n && void 0 !== n && r.push({name: this.name, value: n})
            }
        }), e.param(r)
    }, e.fn.fieldValue = function (t) {
        for (var r = [], a = 0, n = this.length; a < n; a++) {
            var i = this[a], o = e.fieldValue(i, t);
            null === o || void 0 === o || o.constructor == Array && !o.length || (o.constructor == Array ? e.merge(r, o) : r.push(o))
        }
        return r
    }, e.fieldValue = function (t, r) {
        var a = t.name, n = t.type, i = t.tagName.toLowerCase();
        if (void 0 === r && (r = !0), r && (!a || t.disabled || "reset" == n || "button" == n || ("checkbox" == n || "radio" == n) && !t.checked || ("submit" == n || "image" == n) && t.form && t.form.clk != t || "select" == i && -1 == t.selectedIndex)) return null;
        if ("select" == i) {
            var o = t.selectedIndex;
            if (o < 0) return null;
            for (var s = [], u = t.options, l = "select-one" == n, c = l ? o + 1 : u.length, f = l ? o : 0; f < c; f++) {
                var m = u[f];
                if (m.selected) {
                    var d = m.value;
                    if (d || (d = m.attributes && m.attributes.value && !m.attributes.value.specified ? m.text : m.value), l) return d;
                    s.push(d)
                }
            }
            return s
        }
        return e(t).val()
    }, e.fn.clearForm = function (t) {
        return this.each(function () {
            e("input,select,textarea", this).clearFields(t)
        })
    }, e.fn.clearFields = e.fn.clearInputs = function (t) {
        var r = /^(?:color|date|datetime|email|month|number|password|range|search|tel|text|time|url|week)$/i;
        return this.each(function () {
            var a = this.type, n = this.tagName.toLowerCase();
            r.test(a) || "textarea" == n ? this.value = "" : "checkbox" == a || "radio" == a ? this.checked = !1 : "select" == n ? this.selectedIndex = -1 : t && (!0 === t && /hidden/.test(a) || "string" == typeof t && e(this).is(t)) && (this.value = "")
        })
    }, e.fn.resetForm = function () {
        return this.each(function () {
            ("function" == typeof this.reset || "object" == typeof this.reset && !this.reset.nodeType) && this.reset()
        })
    }, e.fn.enable = function (e) {
        return void 0 === e && (e = !0), this.each(function () {
            this.disabled = !e
        })
    }, e.fn.selected = function (t) {
        return void 0 === t && (t = !0), this.each(function () {
            var r = this.type;
            if ("checkbox" == r || "radio" == r) this.checked = t; else if ("option" == this.tagName.toLowerCase()) {
                var a = e(this).parent("select");
                t && a[0] && "select-one" == a[0].type && a.find("option").selected(!1), this.selected = t
            }
        })
    }, e.fn.ajaxSubmit.debug = !1
}(jQuery);