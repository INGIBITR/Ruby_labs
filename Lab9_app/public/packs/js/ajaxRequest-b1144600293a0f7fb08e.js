/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/ajaxRequest.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/ajaxRequest.js":
/*!*********************************************!*\
  !*** ./app/javascript/packs/ajaxRequest.js ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /Users/ingibitr/Documents/Ruby_labs/Lab9_app/app/javascript/packs/ajaxRequest.js: Support for the experimental syntax 'decorators-legacy' isn't currently enabled (16:7):\n\n  14 |                 result = `<p> Steps: </p>\n  15 | <table border=\"1px\">\n> 16 |     ${@currentiteration.each do | res |}\n     |       ^\n  17 |     <tr>\n  18 |         <td> ${= res.to_s} </td>\n  19 |         ${if res == @currentiteration.length - 1\n    at Parser._raise (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:748:17)\n    at Parser.raiseWithData (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:741:17)\n    at Parser.expectOnePlugin (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9112:18)\n    at Parser.parseDecorator (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:11834:10)\n    at Parser.parseDecorators (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:11816:30)\n    at Parser.parseExprAtom (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10471:14)\n    at Parser.parseExprSubscripts (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10122:23)\n    at Parser.parseUpdate (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10102:21)\n    at Parser.parseMaybeUnary (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10091:17)\n    at Parser.parseExprOps (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9961:23)\n    at Parser.parseMaybeConditional (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9935:23)\n    at Parser.parseMaybeAssign (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9898:21)\n    at Parser.parseExpressionBase (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9843:23)\n    at /Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9837:39\n    at Parser.allowInAnd (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:11521:12)\n    at Parser.parseExpression (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9837:17)\n    at Parser.parseTemplateSubstitution (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10876:17)\n    at Parser.parseTemplate (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10866:34)\n    at Parser.parseExprAtom (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10482:21)\n    at Parser.parseExprSubscripts (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10122:23)\n    at Parser.parseUpdate (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10102:21)\n    at Parser.parseMaybeUnary (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:10091:17)\n    at Parser.parseExprOps (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9961:23)\n    at Parser.parseMaybeConditional (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9935:23)\n    at Parser.parseMaybeAssign (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9898:21)\n    at Parser.parseMaybeAssign (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9922:25)\n    at Parser.parseExpressionBase (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9843:23)\n    at /Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9837:39\n    at Parser.allowInAnd (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:11521:12)\n    at Parser.parseExpression (/Users/ingibitr/Documents/Ruby_labs/Lab9_app/node_modules/@babel/parser/lib/index.js:9837:17)");

/***/ })

/******/ });
//# sourceMappingURL=ajaxRequest-b1144600293a0f7fb08e.js.map