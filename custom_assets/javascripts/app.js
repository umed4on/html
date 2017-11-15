/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports, __webpack_require__) {

	'use strict';

	var _dropdown = __webpack_require__(1);

	var _dropdown2 = _interopRequireDefault(_dropdown);

	var _filter = __webpack_require__(2);

	var _filter2 = _interopRequireDefault(_filter);

	var _select = __webpack_require__(3);

	var _select2 = _interopRequireDefault(_select);

	function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

	(function () {
	    var dropDowns = new _dropdown2.default();
	    if (!!document.querySelector('.js-filter')) {
	        var filter = new _filter2.default();
	    }

	    // Header Hamburger
	    var hamburger = document.querySelector('.js-header__hamburger');
	    var closeMenu = document.querySelector('.js-header__close');
	    var headerMenu = document.querySelector('.header .container');

	    [hamburger, closeMenu].forEach(function (item) {
	        item.addEventListener('click', function () {
	            headerMenu.classList.toggle('menu-expanded');
	        });
	    });

	    // Select
	    var selects = document.querySelectorAll('.js-select');

	    if (selects.length) {
	        new _select2.default();
	    }
	})();

/***/ }),
/* 1 */
/***/ (function(module, exports) {

	'use strict';

	Object.defineProperty(exports, "__esModule", {
	    value: true
	});

	var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

	function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

	var Dropdown = function () {
	    function Dropdown() {
	        var _this = this;

	        _classCallCheck(this, Dropdown);

	        this.dropdowns = document.querySelectorAll('.js-dropdown-button');

	        this.dropdowns.forEach(function (drop) {
	            drop.addEventListener('click', _this._onClick.bind(_this));
	        });

	        window.addEventListener('click', this.hide);
	    }

	    _createClass(Dropdown, [{
	        key: '_onClick',
	        value: function _onClick(e) {
	            e.stopPropagation();

	            if (e.target.classList.contains("js-dropdown-button")) {
	                if (e.currentTarget.classList.contains('has-dropdown-expanded')) {
	                    this.hide();
	                } else {
	                    this.show(e);
	                }
	            }
	        }
	    }, {
	        key: 'show',
	        value: function show(e) {
	            this.hide();

	            e.target.classList.add('has-dropdown-expanded');
	            e.target.querySelector('.dropdown').classList.add('dropdown_active');
	        }
	    }, {
	        key: 'hide',
	        value: function hide() {
	            document.querySelectorAll('.has-dropdown-expanded').forEach(function (item) {
	                item.classList.remove('has-dropdown-expanded');
	            });
	            document.querySelectorAll('.dropdown_active').forEach(function (item) {
	                item.classList.remove('dropdown_active');
	            });
	        }
	    }]);

	    return Dropdown;
	}();

	exports.default = Dropdown;

/***/ }),
/* 2 */
/***/ (function(module, exports) {

	'use strict';

	Object.defineProperty(exports, "__esModule", {
	    value: true
	});

	var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

	function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

	var Filter = function () {
	    function Filter() {
	        _classCallCheck(this, Filter);

	        var _this = this;
	        this.el = document.querySelector('.js-filter');
	        this.search = this.el.querySelector('.filter__search');

	        this.el.querySelectorAll('.js-filter__item').forEach(function (item) {
	            item.addEventListener('click', function () {
	                _this.el.querySelector('.filter__item_active').classList.remove('filter__item_active');
	                this.classList.add('filter__item_active');
	            });
	        });

	        // this.el.addEventListener('click', this.toggleState);
	        this.search.addEventListener('click', this.searchToggle.bind(this));
	        window.addEventListener('click', this.hideSearch.bind(this));
	        this.el.querySelector('.js-select').addEventListener('change', function () {
	            document.querySelector('body').classList.toggle('has-opened-filter-select');
	        });
	    }

	    _createClass(Filter, [{
	        key: 'searchToggle',
	        value: function searchToggle(e) {
	            e.stopPropagation();
	            var $target = e.target;
	            var $currentTarget = e.currentTarget;

	            if ($target.classList.contains('icon') || $target === $currentTarget) {
	                this.search.classList.toggle('filter__search_active');
	            }
	        }
	    }, {
	        key: 'showSearch',
	        value: function showSearch() {}
	    }, {
	        key: 'hideSearch',
	        value: function hideSearch() {
	            if (!this.search.querySelector('.input__input').value.length) {
	                this.search.classList.remove('filter__search_active');
	            }
	        }
	    }]);

	    return Filter;
	}();

	exports.default = Filter;

/***/ }),
/* 3 */
/***/ (function(module, exports) {

	'use strict';

	Object.defineProperty(exports, "__esModule", {
	    value: true
	});

	var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

	function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

	var Select = function () {
	    function Select() {
	        var _this = this;

	        _classCallCheck(this, Select);

	        this.selects = document.querySelectorAll('.js-select');

	        this.selects.forEach(function (select) {
	            return select.addEventListener('click', _this._onClick.bind(_this));
	        });

	        window.addEventListener('click', this.hide);
	    }

	    _createClass(Select, [{
	        key: '_onClick',
	        value: function _onClick(e) {
	            e.stopPropagation();
	            var target = e.target;
	            var select = e.currentTarget;

	            if (target.classList.contains("select__current")) {
	                if (select.classList.contains('select-expanded')) {
	                    this.hide();
	                } else {
	                    this.show(e);
	                }
	            }

	            if (target.classList.contains('select__value') || target.parentNode.classList.contains('select__value')) {
	                target = target.classList.contains('select__value') ? target : target.parentNode;
	                var _ref = [target.dataset.value, target.textContent],
	                    value = _ref[0],
	                    text = _ref[1];


	                if (!!select.querySelector('.select__value_active')) {
	                    select.querySelector('.select__value_active').classList.remove('select__value_active');
	                }
	                select.querySelector('.select__current').textContent = text;
	                select.querySelector('.select__current').dataset.value = value;
	                target.classList.add('select__value_active');
	                this.hide();
	            }

	            var event = new Event("change");
	            select.dispatchEvent(event);
	        }
	    }, {
	        key: 'show',
	        value: function show(e) {
	            this.hide();
	            e.currentTarget.classList.add('select-expanded');
	        }
	    }, {
	        key: 'hide',
	        value: function hide() {
	            document.querySelectorAll('.select-expanded').forEach(function (item) {
	                item.classList.remove('select-expanded');
	            });
	        }
	    }]);

	    return Select;
	}();

	exports.default = Select;

/***/ })
/******/ ]);