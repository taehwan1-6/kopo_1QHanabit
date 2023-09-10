$(function () {

    window.sr = ScrollReveal();

    sr.reveal('.deposit_visual1', {
        origin: 'bottom',
        duration: 0,
        scale: 1,
        afterReveal: function (el) {
            var $el = $(el);
            $el.find('.wrap_info').css({
                'opacity': '',
                'transform': ''
            });
            setTimeout(function () {
                $el.find('.line_arr').removeAttr('style');
                $el.find('.list_info').find('li').each(function (i, el) {
                    setTimeout(function () {
                        if (i > 0) {
                            $el.find('.list_info').find('li:nth-child(' + (i) + ')').removeClass('on');
                        }
                        $el.find('.list_info').find('li:nth-child(' + (i + 1) + ')').addClass('on');
                        if (i + 1 === $el.find('.list_info').find('li').length) {
                            $('.ico_info' + (i + 1)).css({
                                'transition': 'opacity 0.2s',
                                'opacity': '0'
                            });
                            $('.ico_info' + (i + 1) + '_active').css('opacity', '');
                        }

                    }.bind(this), i * 400);
                });
            }, 500);
        }
    });
    //
    sr.reveal('.deposit_visual2', {
        origin: 'bottom',
        duration: 1000,
        scale: 1,
        afterReveal: function (el) {
            var $el = $(el);
            var $clickForecast = $el.find('.click_forecast'),
                $hideForecast = $el.find('.hide_forecast'),
                $imgLoad = $el.find('.img_load'),
                $forecastText = $el.find('.forcast_txt');


            $el.find('.bar_progress').css('width', '100%');
            $el.find(".tit_info>span").animateNumber({number: 12}, 1000);

            setTimeouts(function () {
                $clickForecast.css('opacity', 0.5);
            }, 1200)
                .then(function () {
                    $clickForecast.css('opacity', 0);
                }, 400)
                .then(function () {
                    $hideForecast.css('display', 'none');
                }, 350)
                .then(function () {
                    $imgLoad.css({
                        '-webkit-transform': 'rotate(360deg)',
                        'transform': 'rotate(360deg)'
                    });
                })
                .then(function () {
                    $imgLoad.css('display', 'none');
                    $forecastText.removeAttr('style');
                }, 800);
        }
    });

    sr.reveal('.deposit_visual3', {
        origin: 'bottom',
        duration: 100,
        scale: 1,
        afterReveal: function (el) {
            var $el = $(el);
            var $phoneGrup = $el.find('.phone_group'),
                $lineInterest = $el.find('.line_interest'),
                $bgBar = $el.find('.bg_bar'),
                $phoneCash = $el.find('.phone_cash'),
                $interestNum = $el.find('.interest_num');

            var decimal_factor = 100;
            var duraition = 1700;
            var decimal_places = 2;

            $phoneGrup.removeAttr('style');

            setTimeouts(function () {
                $lineInterest.removeAttr('style');
                $phoneCash.removeAttr('style');
                $bgBar.removeAttr('style');
            }, 800)
                .then(function () {
                    $interestNum.animateNumber({
                        number: 650.35 * decimal_factor,
                        numberStep: function (now, tween) {
                            var floored_number = Math.floor(now) / decimal_factor,
                                target = $interestNum;
                            if (decimal_places > 0) {
                                floored_number = floored_number.toFixed(decimal_places);
                            }
                            var splitText = floored_number.split('.');
                            target.html(splitText[0]
                                + '.'
                                + '<span class="num_gray">'
                                + splitText[1]
                                + '</span><span class="txt_won">원</span>');
                        }
                    }, duraition)
                })
        }
    });

    sr.reveal('.deposit_visual4', {
        origin: 'bottom',
        duration: 0,
        afterReveal: function (el) {
            var $el = $(el);
            var $imgPhone = $el.find('.img_phone'),
                $txtCashType = $el.find('.txt_cash_type'),
                $btnNo5 = $el.find('.img_dimmed.img_dimmed1'),
                $btnNo8 = $el.find('.img_dimmed.img_dimmed2');
            setTimeouts(function () {
                $imgPhone.removeAttr('style');
            })
                .then(function () {
                    $txtCashType[0].innerHTML = '5';
                    $btnNo5.css('display', 'block');
                }, 600)
                .then(function () {
                    $btnNo5.css('display', 'none');
                }, 150)
                .then(function () {
                    $txtCashType[0].innerHTML += '0';
                    $btnNo8.css('display', 'block');
                }, 150)
                .then(function () {
                    $btnNo8.css('display', 'none');
                }, 150)
                .then(function () {
                    $txtCashType[0].innerHTML += '0';
                    $btnNo8.css('display', 'block');
                }, 150)
                .then(function () {
                    $txtCashType[0].innerHTML = '5,000';
                    $btnNo8.css('display', 'none');
                }, 150)
                .then(function () {
                    $txtCashType[0].innerHTML = '50,000';
                    $btnNo8.css('display', 'block');
                }, 150)
                .then(function () {
                    $btnNo8.css('display', 'none');
                }, 150)
                .then(function () {
                    $txtCashType[0].innerHTML = '500,000';
                    $btnNo8.css('display', 'block');
                }, 150)
                .then(function () {
                    $btnNo8.css('display', 'none');
                }, 150)
        }
    });

    sr.reveal('.deposit_visual5', {
        origin: 'bottom',
        duration: 0,
        scale: 1,
        beforeReveal: function (el) {
            var $el = $(el);
            $el.find('.circle_wrapper').removeAttr('style');
            $el.find('.num_txt').each(function (i, v) {
                setTimeout(function () {
                    $(this).removeAttr('style');
                }.bind(this), i * 200);
            });

        }
    });
});


$(function () {
    $('.skip_navigation').on('focus', function (e) {
        $("body").removeClass("nav-active");
        $("#nav-global .is-active").removeClass("is-active");
        $(e.currentTarget).parent().addClass("focus");
    });

    $('.skip_navigation').on('blur', function (e) {
        $(e.currentTarget).parent().removeClass("focus");
    });

    (function () {
        var cache = {};
        this.template = function tmpl(str, data) {
            // Figure out if we're getting a template, or if we need to
            // load the template - and be sure to cache the result.
            var fn = !/\W/.test(str) ?
                cache[str] = cache[str] ||
                    tmpl(document.getElementById(str).innerHTML) :

                // Generate a reusable function that will serve as a template
                // generator (and which will be cached).
                new Function("obj",
                    "var p=[],print=function(){p.push.apply(p,arguments);};" +

                    // Introduce the data as local variables using with(){}
                    "with(obj){p.push('" +

                    // Convert the template into pure JavaScript
                    str
                        .replace(/[\r\t\n]/g, " ")
                        .split("<%").join("\t")
                        .replace(/((^|%>)[^\t]*)'/g, "$1\r")
                        .replace(/\t=(.*?)%>/g, "',$1,'")
                        .split("\t").join("');")
                        .split("%>").join("p.push('")
                        .split("\r").join("\\'")
                    + "');}return p.join('');");

            // Provide some basic currying to the user
            return data ? fn(data) : fn;
        };
    })();

    window.ScrollDetector = window.scrollDetector = window.ScrollDetector || window.scrollDetector || function () {
        this.items = [];
        this.add = function (_el, action, options) {
            var el;
            if (window.jQuery && _el instanceof window.jQuery) {
                el = _el[0]
            } else {
                el = _el
            }
            this.items.push(new Item(el, action, options));
            detectScroll();
        };

        function getOffset(element) {
            if (!element.getClientRects().length) {
                return {top: 0, left: 0};
            }
            var rect = element.getBoundingClientRect();
            var win = element.ownerDocument.defaultView;

            return ({
                top: rect.top + win.pageYOffset,
                left: rect.left + win.pageXOffset
            });
        }

        function getWindowHeight() {
            return window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight
        }

        var Item = function (el, action, options) {
            this.id = new Date().getTime();
            this.el = el;
            this.currentActiveStatus = false
            this.action = action.bind(this);
            options = options || {}
            this.options = {
                offset: options.offset || 0,
                scrollTop: options.scrollTop || 0,
                rollback: options.rollback || null,
                actionType: options.actionType || 'onece'
            };
        };

        var windowHeight = getWindowHeight(),
            that = this;

        function detectScroll(e) {

            if (e && e.type == 'resize') {
                windowHeight = getWindowHeight();
            }

            var scrollTop = window.scrollY || document.documentElement.scrollTop;

            for (var i = that.items.length - 1; i > -1; i--) {

                var el = that.items[i].el
                var offsetTop = getOffset(el).top + that.items[i].options.offset;
                var itemHeight = el.getBoundingClientRect().height;

                if (that.items[i].options.actionType == 'custom') {

                    that.items[i].action.call(this, scrollTop);

                } else if (that.items[i].options.actionType == 'inout') {

                    if (
                        (offsetTop > scrollTop && offsetTop < scrollTop + windowHeight) ||
                        (offsetTop + itemHeight > scrollTop && offsetTop + itemHeight < scrollTop + windowHeight) ||
                        (offsetTop < scrollTop && offsetTop + itemHeight > scrollTop + windowHeight)
                    ) {
                        if (that.items[i].currentActiveStatus !== true) {
                            that.items[i].action(el);
                            that.items[i].currentActiveStatus = true
                        }
                    } else {
                        if (that.items[i].currentActiveStatus == true) {
                            that.items[i].action(el);
                            that.items[i].currentActiveStatus = false
                        }
                    }

                } else {

                    if (that.items[i].options.scrollTop) {
                        if (scrollTop > that.items[i].options.scrollTop) {
                            that.items[i].action(el);
                            that.items[i].currentActiveStatus = true

                            if (!that.items[i].options.rollback) {
                                that.items.splice(i, 1)
                            }
                        } else {
                            if (that.items[i].options.rollback) {
                                that.items[i].options.rollback(el);
                            }
                        }
                    } else {
                        if (that.items[i].options.rollback) {
                            if (scrollTop > offsetTop - windowHeight) {
                                that.items[i].action(el);
                                that.items[i].currentActiveStatus = true
                            } else {
                                if (that.items[i].options.rollback) {
                                    that.items[i].currentActiveStatus = false
                                    that.items[i].options.rollback(el);
                                }
                            }

                        } else {
                            if (
                                (offsetTop > scrollTop && offsetTop < scrollTop + windowHeight) ||
                                (offsetTop + itemHeight > scrollTop && offsetTop + itemHeight < scrollTop + windowHeight) ||
                                (offsetTop < scrollTop && offsetTop + itemHeight > scrollTop + windowHeight)
                            ) {
                                that.items[i].action(el);
                                that.items[i].currentActiveStatus = true
                                that.items.splice(i, 1)
                            }
                        }
                    }
                }
            }
        }

        window.addEventListener('scroll', detectScroll);
        window.addEventListener('resize', detectScroll);
    };

    var $selectedBoardItem;
    // 하단 펼치기 접기
    $(".link_tit").on("click", function (e) {
        var $target = $(this);
        var $targetBoardItem = $target.parents(".board_item");
        var isSameElement = false;

        if ($selectedBoardItem) {
            isSameElement = $selectedBoardItem.is($targetBoardItem);
            if (!isSameElement) {
                $selectedBoardItem.find('.info_tit .link_tit').attr('title', '상세내용 보기');
            }
            $selectedBoardItem.removeClass("on").find(".info_cont").slideUp();
            $selectedBoardItem = null;
            $target.attr('title', '상세내용 보기');
        }

        if (isSameElement) {
            return;
        }

        $target.attr('title', '상세내용 닫기');
        $targetBoardItem.addClass("on").find(".info_cont").slideDown(function () {
            var body = $("html, body");
            if (body.scrollTop() > $targetBoardItem.offset().top - 30) {
                body.scrollTop($targetBoardItem.offset().top - 30);
            }
        });
        $selectedBoardItem = $targetBoardItem;
    });

    //상품설명서 및 이용약관
    var farmUrl = $(document.body).data("farmUrl");
    $(document.body).removeAttr("data-farm-url");

    var tplTerms =
        '<% for (var i=0,len=manuals.length;i<len;i++) { %>\
        <strong>\
            <%= manuals[i].doc_nm %>\
            <a href="<%= farmUrl %>/download/<%= manuals[i].orcp_doc_file_id %>" target="_blank" class="link_download"\
                title="<%= manuals[0].doc_nm %> 다운로드"\
                data-show-doc="true"\
                data-html-url="<%= farmUrl %>/view/<%= manuals[i].html_doc_file_id %>"\
                data-txt-url="<%= farmUrl %>/view/<%= manuals[i].txt_doc_file_id %>"\
                data-doc-nm="<%= manuals[0].doc_nm %>">다운로드<span class="img_kakaobank img_download"></span></a>\
        </strong>\
        <% } %>\
        <span class="line_g"></span>\
        <strong class="tit_g">\
            상품 이용 약관\
            <% if (unifiedTerms.length > 0) { %>\
            <a href="<%= farmUrl %>/download/<%= unifiedTerms[0].orcp_doc_file_id %>" target="_blank" class="link_download"\
                title="<%= unifiedTerms[0].doc_nm %> 다운로드"\
                data-show-doc="true"\
                data-html-url="<%= farmUrl %>/view/<%= unifiedTerms[0].html_doc_file_id %>"\
                data-txt-url="<%= farmUrl %>/view/<%= unifiedTerms[0].txt_doc_file_id %>"\
                data-doc-nm="<%= unifiedTerms[0].doc_nm %>">다운로드<span class="img_kakaobank img_download"></span></a>\
            <% } %>\
        </strong>\
        <ul>\
            <% for (var i=0,len=terms.length;i<len;i++) { %>\
            <li>• <a href="<%= farmUrl %>/download/<%= terms[i].orcp_doc_file_id %>" target="_blank"\
                        title="<%= terms[i].doc_nm %> 다운로드"\
                        data-show-doc="true"\
                        data-html-url="<%= farmUrl %>/view/<%= terms[i].html_doc_file_id %>"\
                        data-txt-url="<%= farmUrl %>/view/<%= terms[i].txt_doc_file_id %>"\
                        data-doc-nm="<%= terms[i].doc_nm %>"><%= terms[i].doc_nm %></a></li>\
            <% } %>\
        </ul>';

    var tplUnifiedTermsAndManuals =
        '<% for (var i=0,len=manuals.length;i<len;i++) { %>\
        <strong>\
            <%= manuals[i].doc_nm %>\
            <a href="<%= farmUrl %>/download/<%= manuals[i].orcp_doc_file_id %>" target="_blank" class="link_download"\
                title="<%= manuals[0].doc_nm %> 다운로드"\
                data-show-doc="true"\
                data-html-url="<%= farmUrl %>/view/<%= manuals[i].html_doc_file_id %>"\
                data-txt-url="<%= farmUrl %>/view/<%= manuals[i].txt_doc_file_id %>"\
                data-doc-nm="<%= manuals[0].doc_nm %>">다운로드<span class="img_kakaobank img_download"></span></a>\
        </strong>\
        <% } %>\
        <span class="line_g"></span>\
        <strong class="tit_g">\
            상품 이용 약관\
            <% if (terms.length == 1) { %>\
            <a href="<%= farmUrl %>/download/<%= terms[0].orcp_doc_file_id %>" target="_blank" class="link_download"\
                title="<%= terms[0].doc_nm %> 다운로드"\
                data-show-doc="true"\
                data-html-url="<%= farmUrl %>/view/<%= terms[0].html_doc_file_id %>"\
                data-txt-url="<%= farmUrl %>/view/<%= terms[0].txt_doc_file_id %>"\
                data-doc-nm="<%= terms[0].doc_nm %>">다운로드<span class="img_kakaobank img_download"></span></a>\
            <% } %>\
        </strong>\
        <ul>\
            <% for (var i=0,len=terms.length;i<len;i++) { %>\
            <li>• <a href="<%= farmUrl %>/download/<%= terms[i].orcp_doc_file_id %>" target="_blank"\
                        title="<%= terms[i].doc_nm %> 다운로드"\
                        data-show-doc="true"\
                        data-html-url="<%= farmUrl %>/view/<%= terms[i].html_doc_file_id %>"\
                        data-txt-url="<%= farmUrl %>/view/<%= terms[i].txt_doc_file_id %>"\
                        data-doc-nm="<%= terms[i].doc_nm %>"><%= terms[i].doc_nm %></a></li>\
            <% } %>\
        </ul>';

    $("a[data-product-group-id]").on("click", function () {

        var $target = $(this);
        if (!$target.attr("data-product-group-id")) {
            return;
        }

        var isUnifiedTermsAndManuals = $target.hasClass("unified_terms_manuals");

        var $content = $target.parents(".info_tit").next(".info_cont");
        var templateStr = isUnifiedTermsAndManuals ? tplUnifiedTermsAndManuals : tplTerms;

        $.ajax({
            url: "/api/v1/docs/app/".concat($target.attr("data-product-group-id")),
            type: "GET",
            success: function (res) {
                if ((typeof res).toLowerCase() == 'string') {
                    res = JSON.parse(res)
                }
                var agreements = res.result.agreements
                var manuals = agreements.filter(function (item) {
                    return item.intg_doc_typ_lccd == '04'
                })
                var terms = agreements.filter(function (item) {
                    return item.intg_doc_typ_lccd == '01'
                })
                var unifiedTerms = agreements.filter(function (item) {
                    return item.intg_doc_typ_lccd == '99' && item.intg_doc_typ_mccd == '03'
                })

                var rendered = template(templateStr, {
                    farmUrl: farmUrl,
                    manuals: manuals,
                    terms: terms,
                    unifiedTerms: unifiedTerms
                })

                $content.html(rendered);
                $target.removeAttr("data-product-group-id")
            }
        })
    });

    // 공유하기
    $('[data-share]').on("click", function () {
        var target = $(this).attr('data-share'),
            title = $('meta[property="og:title"]').attr('content'),
            link = $('meta[property="og:url"]').attr('content'),
            imageURL = $('meta[property="og:image"]').attr('content'),
            desc = $('meta[property="og:description"]').attr('content');

        switch (target) {
            case 'kakaotalk':
                alert("카카오톡 공유하기는 모바일에서 가능합니다.");
                break;
            case 'facebook':
                window.open("http://www.facebook.com/sharer/sharer.php?u=".concat(encodeURIComponent(link)), "kakaobank_share_fb", "width=670,height=365");
                break;
            case 'shareIntent':
                alert("공유하기는 모바일에서 가능합니다.");
                break;
            default:
        }
    });

    window.setTimeouts = function (callback, duration) {
        var Queue = function (callback, duration) {
            this.queues = [];
            this.queues.push({callback: callback, duration: duration});
            this.runQueue();
        };

        Queue.prototype.runQueue = function () {
            setTimeout(function () {
                this.queues[0].callback();
                this.queues.splice(0, 1);
                if (this.queues.length > 0) {
                    this.runQueue();
                }
            }.bind(this), this.queues[0].duration)
        };

        Queue.prototype.then = function (callback, duration) {
            this.queues.push({callback: callback, duration: duration});
            return this;
        };

        return new Queue(callback, duration);
    }
});


$(function () {
    class FocusController {
        constructor() {
            this.data = new Map();
            this.currentName = null;
        }

        add(name, $prev, $next) {
            this.currentName = name;
            this.data.set(this.currentName, {prev: $prev, next: $next});
        }

        clear() {
            this.data.delete(this.currentName);
            this.currentName = null;
        }

        focusOn(name, $prev, $next) {
            this.add(name, $prev, $next);
            setTimeout(() => {
                $next
                    .eq(0)
                    .focus()
                $next
                    .eq($next.size() - 1)
                    .on('focusout', () => {
                        $next.eq(0).focus();
                    });
            }, 600);
        }

        focusOut() {
            setTimeout(() => {
                if (this.currentName && this.data.get(this.currentName)) {
                    this.data.get(this.currentName).prev.focus();
                    this.clear();
                }
            }, 300);
        }
    }

    const focusController = new FocusController();
    window.focusController = focusController; // 별도의 데이터를 불러서 팝업을 여는 경우 각 페이지 스크립트에서 처리
    $('.a__sec-product-link a')
        .filter((_, el) => {
            const targetClassName = $(el).attr('data-target');
            return targetClassName !== 'pop-tnc';
        })
        .on('click', function () {
            const targetClassName = $(this).attr('data-target');
            focusController.focusOn(`${targetClassName}_modal`, $(this), $(`.${targetClassName} button:not(".g__pop-bg"), .${targetClassName} a`));
        });
    $('.g__btn-close, .g__pop-bg').on('click', function () {
        focusController.focusOut();
    });
});

