:- module(expansions, []).

/** <module> Expansions
 *
 * Goal expansions required by some modules.
 *
 * * * * * * * * * * * * * COPYRIGHT NOTICE  * * * * * * * * * * * * * * *
 *                                                                       *
 *  This file is part of TerminusDB.                                     *
 *                                                                       *
 *  TerminusDB is free software: you can redistribute it and/or modify   *
 *  it under the terms of the GNU General Public License as published by *
 *  the Free Software Foundation, under version 3 of the License.        *
 *                                                                       *
 *                                                                       *
 *  TerminusDB is distributed in the hope that it will be useful,        *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of       *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        *
 *  GNU General Public License for more details.                         *
 *                                                                       *
 *  You should have received a copy of the GNU General Public License    *
 *  along with TerminusDB.  If not, see <https://www.gnu.org/licenses/>. *
 *                                                                       *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

:- use_module(global_prefixes).

:- reexport(core(util/syntax)).

:- multifile user:goal_expansion/2.
:- dynamic user:goal_expansion/2.

% xrdf/4
user:goal_expansion(xrdf(G,A,Y,Z),xrdf(G,X,Y,Z)) :-
    nonvar(A),
    global_prefix_expand(A,X).
user:goal_expansion(xrdf(G,X,B,Z),xrdf(G,X,Y,Z)) :-
    nonvar(B),
    global_prefix_expand(B,Y).
user:goal_expansion(xrdf(G,X,Y,C),xrdf(G,X,Y,Z)) :-
    nonvar(C),
    C \= _@_,
    C \= _^^_,
    global_prefix_expand(C,Z).
user:goal_expansion(xrdf(G,X,Y,L),xrdf(G,X,Y,Object)) :-
    nonvar(L),
    once(L = _@_ ; L = _^^_),
    literal_expand(L,Object).

% delete/5
user:goal_expansion(delete(G,A,Y,Z,N),delete(G,X,Y,Z,N)) :-
    nonvar(A),
    global_prefix_expand(A,X).
user:goal_expansion(delete(G,X,B,Z,N),delete(G,X,Y,Z,N)) :-
    nonvar(B),
    global_prefix_expand(B,Y).
user:goal_expansion(delete(G,X,Y,C,N),delete(G,X,Y,Z,N)) :-
    nonvar(C),
    C \= _@_,
    C \= _^^_,
    global_prefix_expand(C,Z).
user:goal_expansion(delete(G,X,Y,L,N),delete(G,X,Y,Object,N)) :-
    nonvar(L),
    once(L = _@_ ; L = _^^_),
    literal_expand(L,Object).

% insert/5
user:goal_expansion(insert(G,A,Y,Z,N),insert(G,X,Y,Z,N)) :-
    nonvar(A),
    global_prefix_expand(A,X).
user:goal_expansion(insert(G,X,B,Z,N),insert(G,X,Y,Z,N)) :-
    nonvar(B),
    global_prefix_expand(B,Y).
user:goal_expansion(insert(G,X,Y,C,N),insert(G,X,Y,Z,N)) :-
    nonvar(C),
    C \= _@_,
    C \= _^^_,
    global_prefix_expand(C,Z).
user:goal_expansion(insert(G,X,Y,L,N),insert(G,X,Y,Object,N)) :-
    nonvar(L),
    once(L = _@_ ; L = _^^_),
    literal_expand(L,Object).

% xrdf_added/4
user:goal_expansion(xrdf_added(G,A,Y,Z),xrdf_added(G,X,Y,Z)) :-
    nonvar(A),
    global_prefix_expand(A,X).
user:goal_expansion(xrdf_added(G,X,B,Z),xrdf_added(G,X,Y,Z)) :-
    nonvar(B),
    global_prefix_expand(B,Y).
user:goal_expansion(xrdf_added(G,X,Y,C),xrdf_added(G,X,Y,Z)) :-
    nonvar(C),
    C \= _@_,
    C \= _^^_,
    global_prefix_expand(C,Z).
user:goal_expansion(xrdf_added(G,X,Y,L),xrdf_added(G,X,Y,Object)) :-
    nonvar(L),
    once(L = _@_ ; L = _^^_),
    literal_expand(L,Object).

% xrdf_deleted/4
user:goal_expansion(xrdf_deleted(G,A,Y,Z),xrdf_deleted(G,X,Y,Z)) :-
    nonvar(A),
    global_prefix_expand(A,X).
user:goal_expansion(xrdf_deleted(G,X,B,Z),xrdf_deleted(G,X,Y,Z)) :-
    nonvar(B),
    global_prefix_expand(B,Y).
user:goal_expansion(xrdf_deleted(G,X,Y,C),xrdf_deleted(G,X,Y,Z)) :-
    nonvar(C),
    C \= _@_,
    C \= _^^_,
    global_prefix_expand(C,Z).
user:goal_expansion(xrdf_deleted(G,X,Y,L),xrdf_deleted(G,X,Y,Object)) :-
    nonvar(L),
    once(L = _@_ ; L = _^^_),
    literal_expand(L,Object).
