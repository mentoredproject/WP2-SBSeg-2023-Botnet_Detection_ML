��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758�
�
training/Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nametraining/Adam/dense_2/bias/v
�
0training/Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/bias/v*
_output_shapes
:*
dtype0
�
training/Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name training/Adam/dense_2/kernel/v
�
2training/Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/kernel/v*
_output_shapes

:*
dtype0
�
training/Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nametraining/Adam/dense_1/bias/v
�
0training/Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/bias/v*
_output_shapes
:*
dtype0
�
training/Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name training/Adam/dense_1/kernel/v
�
2training/Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/kernel/v*
_output_shapes

:*
dtype0
�
training/Adam/z_var/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nametraining/Adam/z_var/bias/v
�
.training/Adam/z_var/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/z_var/bias/v*
_output_shapes
:*
dtype0
�
training/Adam/z_var/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nametraining/Adam/z_var/kernel/v
�
0training/Adam/z_var/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/z_var/kernel/v*
_output_shapes

:*
dtype0
�
training/Adam/z_mean/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nametraining/Adam/z_mean/bias/v
�
/training/Adam/z_mean/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/z_mean/bias/v*
_output_shapes
:*
dtype0
�
training/Adam/z_mean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nametraining/Adam/z_mean/kernel/v
�
1training/Adam/z_mean/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/z_mean/kernel/v*
_output_shapes

:*
dtype0
�
training/Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nametraining/Adam/dense/bias/v
�
.training/Adam/dense/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/v*
_output_shapes
:*
dtype0
�
training/Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nametraining/Adam/dense/kernel/v
�
0training/Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/v*
_output_shapes

:*
dtype0
�
training/Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nametraining/Adam/dense_2/bias/m
�
0training/Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/bias/m*
_output_shapes
:*
dtype0
�
training/Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name training/Adam/dense_2/kernel/m
�
2training/Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_2/kernel/m*
_output_shapes

:*
dtype0
�
training/Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nametraining/Adam/dense_1/bias/m
�
0training/Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/bias/m*
_output_shapes
:*
dtype0
�
training/Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name training/Adam/dense_1/kernel/m
�
2training/Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_1/kernel/m*
_output_shapes

:*
dtype0
�
training/Adam/z_var/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nametraining/Adam/z_var/bias/m
�
.training/Adam/z_var/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/z_var/bias/m*
_output_shapes
:*
dtype0
�
training/Adam/z_var/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nametraining/Adam/z_var/kernel/m
�
0training/Adam/z_var/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/z_var/kernel/m*
_output_shapes

:*
dtype0
�
training/Adam/z_mean/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nametraining/Adam/z_mean/bias/m
�
/training/Adam/z_mean/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/z_mean/bias/m*
_output_shapes
:*
dtype0
�
training/Adam/z_mean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nametraining/Adam/z_mean/kernel/m
�
1training/Adam/z_mean/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/z_mean/kernel/m*
_output_shapes

:*
dtype0
�
training/Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nametraining/Adam/dense/bias/m
�
.training/Adam/dense/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/bias/m*
_output_shapes
:*
dtype0
�
training/Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nametraining/Adam/dense/kernel/m
�
0training/Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense/kernel/m*
_output_shapes

:*
dtype0
�
training/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nametraining/Adam/learning_rate
�
/training/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
_output_shapes
: *
dtype0
z
training/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nametraining/Adam/decay
s
'training/Adam/decay/Read/ReadVariableOpReadVariableOptraining/Adam/decay*
_output_shapes
: *
dtype0
|
training/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/Adam/beta_2
u
(training/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining/Adam/beta_2*
_output_shapes
: *
dtype0
|
training/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/Adam/beta_1
u
(training/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining/Adam/beta_1*
_output_shapes
: *
dtype0
x
training/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *#
shared_nametraining/Adam/iter
q
&training/Adam/iter/Read/ReadVariableOpReadVariableOptraining/Adam/iter*
_output_shapes
: *
dtype0	
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
l

z_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
z_var/bias
e
z_var/bias/Read/ReadVariableOpReadVariableOp
z_var/bias*
_output_shapes
:*
dtype0
t
z_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namez_var/kernel
m
 z_var/kernel/Read/ReadVariableOpReadVariableOpz_var/kernel*
_output_shapes

:*
dtype0
n
z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_mean/bias
g
z_mean/bias/Read/ReadVariableOpReadVariableOpz_mean/bias*
_output_shapes
:*
dtype0
v
z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namez_mean/kernel
o
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
�
serving_default_encoder_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_encoder_inputdense/kernel
dense/biasz_mean/kernelz_mean/biasz_var/kernel
z_var/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_1343

NoOpNoOp
�N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�M
value�MB�M B�M
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
* 
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
J
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9*
J
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9*
* 
�
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
/trace_0
0trace_1
1trace_2
2trace_3* 
6
3trace_0
4trace_1
5trace_2
6trace_3* 
* 
�
7iter

8beta_1

9beta_2
	:decay
;learning_rate m�!m�"m�#m�$m�%m�&m�'m�(m�)m� v�!v�"v�#v�$v�%v�&v�'v�(v�)v�*

<serving_default* 
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

 kernel
!bias*
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

"kernel
#bias*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

$kernel
%bias*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
.
 0
!1
"2
#3
$4
%5*
.
 0
!1
"2
#3
$4
%5*
* 
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
6
^trace_0
_trace_1
`trace_2
atrace_3* 
* 
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

&kernel
'bias*
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

(kernel
)bias*
 
&0
'1
(2
)3*
 
&0
'1
(2
)3*
* 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
strace_0
ttrace_1
utrace_2
vtrace_3* 
6
wtrace_0
xtrace_1
ytrace_2
ztrace_3* 
LF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEz_mean/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEz_mean/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEz_var/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
z_var/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_2/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_2/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
UO
VARIABLE_VALUEtraining/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEtraining/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEtraining/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEtraining/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEtraining/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

 0
!1*

 0
!1*
* 
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
'
0
1
2
3
4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

&0
'1*

&0
'1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

(0
)1*

(0
)1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
xr
VARIABLE_VALUEtraining/Adam/dense/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEtraining/Adam/dense/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEtraining/Adam/z_mean/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEtraining/Adam/z_mean/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEtraining/Adam/z_var/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEtraining/Adam/z_var/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEtraining/Adam/dense_1/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEtraining/Adam/dense_1/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEtraining/Adam/dense_2/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEtraining/Adam/dense_2/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEtraining/Adam/dense/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEtraining/Adam/dense/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEtraining/Adam/z_mean/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEtraining/Adam/z_mean/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEtraining/Adam/z_var/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEtraining/Adam/z_var/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEtraining/Adam/dense_1/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEtraining/Adam/dense_1/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEtraining/Adam/dense_2/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEtraining/Adam/dense_2/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasz_mean/kernelz_mean/biasz_var/kernel
z_var/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biastraining/Adam/itertraining/Adam/beta_1training/Adam/beta_2training/Adam/decaytraining/Adam/learning_ratetraining/Adam/dense/kernel/mtraining/Adam/dense/bias/mtraining/Adam/z_mean/kernel/mtraining/Adam/z_mean/bias/mtraining/Adam/z_var/kernel/mtraining/Adam/z_var/bias/mtraining/Adam/dense_1/kernel/mtraining/Adam/dense_1/bias/mtraining/Adam/dense_2/kernel/mtraining/Adam/dense_2/bias/mtraining/Adam/dense/kernel/vtraining/Adam/dense/bias/vtraining/Adam/z_mean/kernel/vtraining/Adam/z_mean/bias/vtraining/Adam/z_var/kernel/vtraining/Adam/z_var/bias/vtraining/Adam/dense_1/kernel/vtraining/Adam/dense_1/bias/vtraining/Adam/dense_2/kernel/vtraining/Adam/dense_2/bias/vConst*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_2014
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasz_mean/kernelz_mean/biasz_var/kernel
z_var/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biastraining/Adam/itertraining/Adam/beta_1training/Adam/beta_2training/Adam/decaytraining/Adam/learning_ratetraining/Adam/dense/kernel/mtraining/Adam/dense/bias/mtraining/Adam/z_mean/kernel/mtraining/Adam/z_mean/bias/mtraining/Adam/z_var/kernel/mtraining/Adam/z_var/bias/mtraining/Adam/dense_1/kernel/mtraining/Adam/dense_1/bias/mtraining/Adam/dense_2/kernel/mtraining/Adam/dense_2/bias/mtraining/Adam/dense/kernel/vtraining/Adam/dense/bias/vtraining/Adam/z_mean/kernel/vtraining/Adam/z_mean/bias/vtraining/Adam/z_var/kernel/vtraining/Adam/z_var/bias/vtraining/Adam/dense_1/kernel/vtraining/Adam/dense_1/bias/vtraining/Adam/dense_2/kernel/vtraining/Adam/dense_2/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_2129��

�
�
@__inference_encoder_layer_call_and_return_conditional_losses_812

inputs$
dense_dense_kernel:
dense_dense_bias:&
z_mean_z_mean_kernel: 
z_mean_z_mean_bias:$
z_var_z_var_kernel:
z_var_z_var_bias:
identity��dense/StatefulPartitionedCall�z/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�z_var/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_702�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_mean_z_mean_kernelz_mean_z_mean_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_z_mean_layer_call_and_return_conditional_losses_716�
z_var/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_var_z_var_kernelz_var_z_var_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_z_var_layer_call_and_return_conditional_losses_730�
z/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0&z_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *C
f>R<
:__inference_z_layer_call_and_return_conditional_losses_756q
IdentityIdentity"z/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^z/StatefulPartitionedCall^z_mean/StatefulPartitionedCall^z_var/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall26
z/StatefulPartitionedCallz/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall2>
z_var/StatefulPartitionedCallz_var/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_dense_2_layer_call_and_return_conditional_losses_1781

inputs6
$matmul_readvariableop_dense_2_kernel:1
#biasadd_readvariableop_dense_2_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpz
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_2_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
>__inference_z_var_layer_call_and_return_conditional_losses_730

inputs4
"matmul_readvariableop_z_var_kernel:/
!biasadd_readvariableop_z_var_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpx
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_z_var_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_z_var_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
&__inference_vae_mlp_layer_call_fn_1233
encoder_input
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias: 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�
�
&__inference_encoder_layer_call_fn_1503

inputs
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_837o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_decoder_layer_call_and_return_conditional_losses_1053

z_sampling(
dense_1_dense_1_kernel:"
dense_1_dense_1_bias:(
dense_2_dense_2_kernel:"
dense_2_dense_2_bias:
identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1023�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling
�
�
&__inference_encoder_layer_call_fn_1492

inputs
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_812o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
@__inference_encoder_layer_call_and_return_conditional_losses_837

inputs$
dense_dense_kernel:
dense_dense_bias:&
z_mean_z_mean_kernel: 
z_mean_z_mean_bias:$
z_var_z_var_kernel:
z_var_z_var_bias:
identity��dense/StatefulPartitionedCall�z/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�z_var/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_702�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_mean_z_mean_kernelz_mean_z_mean_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_z_mean_layer_call_and_return_conditional_losses_716�
z_var/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_var_z_var_kernelz_var_z_var_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_z_var_layer_call_and_return_conditional_losses_730�
z/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0&z_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *C
f>R<
:__inference_z_layer_call_and_return_conditional_losses_792q
IdentityIdentity"z/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^z/StatefulPartitionedCall^z_mean/StatefulPartitionedCall^z_var/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall26
z/StatefulPartitionedCallz/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall2>
z_var/StatefulPartitionedCallz_var/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_1763

inputs6
$matmul_readvariableop_dense_1_kernel:1
#biasadd_readvariableop_dense_1_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpz
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_1_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
?__inference_z_var_layer_call_and_return_conditional_losses_1689

inputs4
"matmul_readvariableop_z_var_kernel:/
!biasadd_readvariableop_z_var_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpx
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_z_var_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_z_var_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1185
encoder_input&
encoder_dense_kernel: 
encoder_dense_bias:'
encoder_z_mean_kernel:!
encoder_z_mean_bias:&
encoder_z_var_kernel: 
encoder_z_var_bias:(
decoder_dense_1_kernel:"
decoder_dense_1_bias:(
decoder_dense_2_kernel:"
decoder_dense_2_bias:
identity��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallencoder_inputencoder_dense_kernelencoder_dense_biasencoder_z_mean_kernelencoder_z_mean_biasencoder_z_var_kernelencoder_z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_812�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_dense_1_kerneldecoder_dense_1_biasdecoder_dense_2_kerneldecoder_dense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1066w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�

�
&__inference_vae_mlp_layer_call_fn_1373

inputs
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias: 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1251o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
 __inference__traced_restore_2129
file_prefix/
assignvariableop_dense_kernel:+
assignvariableop_1_dense_bias:2
 assignvariableop_2_z_mean_kernel:,
assignvariableop_3_z_mean_bias:1
assignvariableop_4_z_var_kernel:+
assignvariableop_5_z_var_bias:3
!assignvariableop_6_dense_1_kernel:-
assignvariableop_7_dense_1_bias:3
!assignvariableop_8_dense_2_kernel:-
assignvariableop_9_dense_2_bias:0
&assignvariableop_10_training_adam_iter:	 2
(assignvariableop_11_training_adam_beta_1: 2
(assignvariableop_12_training_adam_beta_2: 1
'assignvariableop_13_training_adam_decay: 9
/assignvariableop_14_training_adam_learning_rate: B
0assignvariableop_15_training_adam_dense_kernel_m:<
.assignvariableop_16_training_adam_dense_bias_m:C
1assignvariableop_17_training_adam_z_mean_kernel_m:=
/assignvariableop_18_training_adam_z_mean_bias_m:B
0assignvariableop_19_training_adam_z_var_kernel_m:<
.assignvariableop_20_training_adam_z_var_bias_m:D
2assignvariableop_21_training_adam_dense_1_kernel_m:>
0assignvariableop_22_training_adam_dense_1_bias_m:D
2assignvariableop_23_training_adam_dense_2_kernel_m:>
0assignvariableop_24_training_adam_dense_2_bias_m:B
0assignvariableop_25_training_adam_dense_kernel_v:<
.assignvariableop_26_training_adam_dense_bias_v:C
1assignvariableop_27_training_adam_z_mean_kernel_v:=
/assignvariableop_28_training_adam_z_mean_bias_v:B
0assignvariableop_29_training_adam_z_var_kernel_v:<
.assignvariableop_30_training_adam_z_var_bias_v:D
2assignvariableop_31_training_adam_dense_1_kernel_v:>
0assignvariableop_32_training_adam_dense_1_bias_v:D
2assignvariableop_33_training_adam_dense_2_kernel_v:>
0assignvariableop_34_training_adam_dense_2_bias_v:
identity_36��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_z_mean_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_z_mean_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_z_var_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_z_var_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_training_adam_iterIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp(assignvariableop_11_training_adam_beta_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_training_adam_beta_2Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_training_adam_decayIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_training_adam_learning_rateIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_training_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_training_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp1assignvariableop_17_training_adam_z_mean_kernel_mIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp/assignvariableop_18_training_adam_z_mean_bias_mIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp0assignvariableop_19_training_adam_z_var_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp.assignvariableop_20_training_adam_z_var_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp2assignvariableop_21_training_adam_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_training_adam_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp2assignvariableop_23_training_adam_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp0assignvariableop_24_training_adam_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp0assignvariableop_25_training_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp.assignvariableop_26_training_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp1assignvariableop_27_training_adam_z_mean_kernel_vIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp/assignvariableop_28_training_adam_z_mean_bias_vIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp0assignvariableop_29_training_adam_z_var_kernel_vIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp.assignvariableop_30_training_adam_z_var_bias_vIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp2assignvariableop_31_training_adam_dense_1_kernel_vIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp0assignvariableop_32_training_adam_dense_1_bias_vIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp2assignvariableop_33_training_adam_dense_2_kernel_vIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp0assignvariableop_34_training_adam_dense_2_bias_vIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
%__inference_encoder_layer_call_fn_821
encoder_input
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_812o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_1023

inputs6
$matmul_readvariableop_dense_1_kernel:1
#biasadd_readvariableop_dense_1_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpz
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_1_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%__inference_encoder_layer_call_fn_846
encoder_input
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_837o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�A
�	
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1427

inputsB
0encoder_dense_matmul_readvariableop_dense_kernel:=
/encoder_dense_biasadd_readvariableop_dense_bias:D
2encoder_z_mean_matmul_readvariableop_z_mean_kernel:?
1encoder_z_mean_biasadd_readvariableop_z_mean_bias:B
0encoder_z_var_matmul_readvariableop_z_var_kernel:=
/encoder_z_var_biasadd_readvariableop_z_var_bias:F
4decoder_dense_1_matmul_readvariableop_dense_1_kernel:A
3decoder_dense_1_biasadd_readvariableop_dense_1_bias:F
4decoder_dense_2_matmul_readvariableop_dense_2_kernel:A
3decoder_dense_2_biasadd_readvariableop_dense_2_bias:
identity��&decoder/dense_1/BiasAdd/ReadVariableOp�%decoder/dense_1/MatMul/ReadVariableOp�&decoder/dense_2/BiasAdd/ReadVariableOp�%decoder/dense_2/MatMul/ReadVariableOp�$encoder/dense/BiasAdd/ReadVariableOp�#encoder/dense/MatMul/ReadVariableOp�%encoder/z_mean/BiasAdd/ReadVariableOp�$encoder/z_mean/MatMul/ReadVariableOp�$encoder/z_var/BiasAdd/ReadVariableOp�#encoder/z_var/MatMul/ReadVariableOp�
#encoder/dense/MatMul/ReadVariableOpReadVariableOp0encoder_dense_matmul_readvariableop_dense_kernel*
_output_shapes

:*
dtype0�
encoder/dense/MatMulMatMulinputs+encoder/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$encoder/dense/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype0�
encoder/dense/BiasAddBiasAddencoder/dense/MatMul:product:0,encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
encoder/dense/ReluReluencoder/dense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
$encoder/z_mean/MatMul/ReadVariableOpReadVariableOp2encoder_z_mean_matmul_readvariableop_z_mean_kernel*
_output_shapes

:*
dtype0�
encoder/z_mean/MatMulMatMul encoder/dense/Relu:activations:0,encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp1encoder_z_mean_biasadd_readvariableop_z_mean_bias*
_output_shapes
:*
dtype0�
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0-encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#encoder/z_var/MatMul/ReadVariableOpReadVariableOp0encoder_z_var_matmul_readvariableop_z_var_kernel*
_output_shapes

:*
dtype0�
encoder/z_var/MatMulMatMul encoder/dense/Relu:activations:0+encoder/z_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$encoder/z_var/BiasAdd/ReadVariableOpReadVariableOp/encoder_z_var_biasadd_readvariableop_z_var_bias*
_output_shapes
:*
dtype0�
encoder/z_var/BiasAddBiasAddencoder/z_var/MatMul:product:0,encoder/z_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
encoder/z/ShapeShapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
::��g
encoder/z/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
encoder/z/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
encoder/z/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder/z/strided_sliceStridedSliceencoder/z/Shape:output:0&encoder/z/strided_slice/stack:output:0(encoder/z/strided_slice/stack_1:output:0(encoder/z/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
encoder/z/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
encoder/z/random_normal/shapePack encoder/z/strided_slice:output:0(encoder/z/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:a
encoder/z/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    c
encoder/z/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,encoder/z/random_normal/RandomStandardNormalRandomStandardNormal&encoder/z/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2��*
seed���)�
encoder/z/random_normal/mulMul5encoder/z/random_normal/RandomStandardNormal:output:0'encoder/z/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
encoder/z/random_normalAddV2encoder/z/random_normal/mul:z:0%encoder/z/random_normal/mean:output:0*
T0*'
_output_shapes
:���������T
encoder/z/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder/z/mulMulencoder/z/mul/x:output:0encoder/z_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������Y
encoder/z/ExpExpencoder/z/mul:z:0*
T0*'
_output_shapes
:���������x
encoder/z/mul_1Mulencoder/z/Exp:y:0encoder/z/random_normal:z:0*
T0*'
_output_shapes
:���������~
encoder/z/addAddV2encoder/z_mean/BiasAdd:output:0encoder/z/mul_1:z:0*
T0*'
_output_shapes
:����������
%decoder/dense_1/MatMul/ReadVariableOpReadVariableOp4decoder_dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

:*
dtype0�
decoder/dense_1/MatMulMatMulencoder/z/add:z:0-decoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&decoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp3decoder_dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype0�
decoder/dense_1/BiasAddBiasAdd decoder/dense_1/MatMul:product:0.decoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
decoder/dense_1/ReluRelu decoder/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
%decoder/dense_2/MatMul/ReadVariableOpReadVariableOp4decoder_dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes

:*
dtype0�
decoder/dense_2/MatMulMatMul"decoder/dense_1/Relu:activations:0-decoder/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&decoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp3decoder_dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:*
dtype0�
decoder/dense_2/BiasAddBiasAdd decoder/dense_2/MatMul:product:0.decoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
decoder/dense_2/SigmoidSigmoid decoder/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydecoder/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^decoder/dense_1/BiasAdd/ReadVariableOp&^decoder/dense_1/MatMul/ReadVariableOp'^decoder/dense_2/BiasAdd/ReadVariableOp&^decoder/dense_2/MatMul/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp&^encoder/z_mean/BiasAdd/ReadVariableOp%^encoder/z_mean/MatMul/ReadVariableOp%^encoder/z_var/BiasAdd/ReadVariableOp$^encoder/z_var/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 2P
&decoder/dense_1/BiasAdd/ReadVariableOp&decoder/dense_1/BiasAdd/ReadVariableOp2N
%decoder/dense_1/MatMul/ReadVariableOp%decoder/dense_1/MatMul/ReadVariableOp2P
&decoder/dense_2/BiasAdd/ReadVariableOp&decoder/dense_2/BiasAdd/ReadVariableOp2N
%decoder/dense_2/MatMul/ReadVariableOp%decoder/dense_2/MatMul/ReadVariableOp2L
$encoder/dense/BiasAdd/ReadVariableOp$encoder/dense/BiasAdd/ReadVariableOp2J
#encoder/dense/MatMul/ReadVariableOp#encoder/dense/MatMul/ReadVariableOp2N
%encoder/z_mean/BiasAdd/ReadVariableOp%encoder/z_mean/BiasAdd/ReadVariableOp2L
$encoder/z_mean/MatMul/ReadVariableOp$encoder/z_mean/MatMul/ReadVariableOp2L
$encoder/z_var/BiasAdd/ReadVariableOp$encoder/z_var/BiasAdd/ReadVariableOp2J
#encoder/z_var/MatMul/ReadVariableOp#encoder/z_var/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_dense_2_layer_call_and_return_conditional_losses_1038

inputs6
$matmul_readvariableop_dense_2_kernel:1
#biasadd_readvariableop_dense_2_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpz
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_2_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
g
:__inference_z_layer_call_and_return_conditional_losses_756

inputs
inputs_1
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2��y*
seed���)�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:���������|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:���������E
ExpExpmul:z:0*
T0*'
_output_shapes
:���������Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:���������Q
addAddV2inputs	mul_1:z:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
?__inference_dense_layer_call_and_return_conditional_losses_1655

inputs4
"matmul_readvariableop_dense_kernel:/
!biasadd_readvariableop_dense_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpx
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_decoder_layer_call_and_return_conditional_losses_1066

inputs(
dense_1_dense_1_kernel:"
dense_1_dense_1_bias:(
dense_2_dense_2_kernel:"
dense_2_dense_2_bias:
identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1023�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
>__inference_dense_layer_call_and_return_conditional_losses_702

inputs4
"matmul_readvariableop_dense_kernel:/
!biasadd_readvariableop_dense_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpx
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
?__inference_z_mean_layer_call_and_return_conditional_losses_716

inputs5
#matmul_readvariableop_z_mean_kernel:0
"biasadd_readvariableop_z_mean_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpy
MatMul/ReadVariableOpReadVariableOp#matmul_readvariableop_z_mean_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������u
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_z_mean_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_decoder_layer_call_fn_1073

z_sampling 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1066o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling
�
�
$__inference_dense_layer_call_fn_1644

inputs
dense_kernel:

dense_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_702o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_decoder_layer_call_fn_1592

inputs 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1066o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
i
 __inference_z_layer_call_fn_1701
inputs_0
inputs_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *C
f>R<
:__inference_z_layer_call_and_return_conditional_losses_792o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:���������:���������22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
i
 __inference_z_layer_call_fn_1695
inputs_0
inputs_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *C
f>R<
:__inference_z_layer_call_and_return_conditional_losses_756o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:���������:���������22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
&__inference_dense_2_layer_call_fn_1770

inputs 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1038o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
@__inference_encoder_layer_call_and_return_conditional_losses_795
encoder_input$
dense_dense_kernel:
dense_dense_bias:&
z_mean_z_mean_kernel: 
z_mean_z_mean_bias:$
z_var_z_var_kernel:
z_var_z_var_bias:
identity��dense/StatefulPartitionedCall�z/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�z_var/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallencoder_inputdense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_702�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_mean_z_mean_kernelz_mean_z_mean_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_z_mean_layer_call_and_return_conditional_losses_716�
z_var/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_var_z_var_kernelz_var_z_var_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_z_var_layer_call_and_return_conditional_losses_730�
z/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0&z_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *C
f>R<
:__inference_z_layer_call_and_return_conditional_losses_792q
IdentityIdentity"z/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^z/StatefulPartitionedCall^z_mean/StatefulPartitionedCall^z_var/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall26
z/StatefulPartitionedCallz/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall2>
z_var/StatefulPartitionedCallz_var/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�A
�	
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1481

inputsB
0encoder_dense_matmul_readvariableop_dense_kernel:=
/encoder_dense_biasadd_readvariableop_dense_bias:D
2encoder_z_mean_matmul_readvariableop_z_mean_kernel:?
1encoder_z_mean_biasadd_readvariableop_z_mean_bias:B
0encoder_z_var_matmul_readvariableop_z_var_kernel:=
/encoder_z_var_biasadd_readvariableop_z_var_bias:F
4decoder_dense_1_matmul_readvariableop_dense_1_kernel:A
3decoder_dense_1_biasadd_readvariableop_dense_1_bias:F
4decoder_dense_2_matmul_readvariableop_dense_2_kernel:A
3decoder_dense_2_biasadd_readvariableop_dense_2_bias:
identity��&decoder/dense_1/BiasAdd/ReadVariableOp�%decoder/dense_1/MatMul/ReadVariableOp�&decoder/dense_2/BiasAdd/ReadVariableOp�%decoder/dense_2/MatMul/ReadVariableOp�$encoder/dense/BiasAdd/ReadVariableOp�#encoder/dense/MatMul/ReadVariableOp�%encoder/z_mean/BiasAdd/ReadVariableOp�$encoder/z_mean/MatMul/ReadVariableOp�$encoder/z_var/BiasAdd/ReadVariableOp�#encoder/z_var/MatMul/ReadVariableOp�
#encoder/dense/MatMul/ReadVariableOpReadVariableOp0encoder_dense_matmul_readvariableop_dense_kernel*
_output_shapes

:*
dtype0�
encoder/dense/MatMulMatMulinputs+encoder/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$encoder/dense/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype0�
encoder/dense/BiasAddBiasAddencoder/dense/MatMul:product:0,encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
encoder/dense/ReluReluencoder/dense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
$encoder/z_mean/MatMul/ReadVariableOpReadVariableOp2encoder_z_mean_matmul_readvariableop_z_mean_kernel*
_output_shapes

:*
dtype0�
encoder/z_mean/MatMulMatMul encoder/dense/Relu:activations:0,encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp1encoder_z_mean_biasadd_readvariableop_z_mean_bias*
_output_shapes
:*
dtype0�
encoder/z_mean/BiasAddBiasAddencoder/z_mean/MatMul:product:0-encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#encoder/z_var/MatMul/ReadVariableOpReadVariableOp0encoder_z_var_matmul_readvariableop_z_var_kernel*
_output_shapes

:*
dtype0�
encoder/z_var/MatMulMatMul encoder/dense/Relu:activations:0+encoder/z_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$encoder/z_var/BiasAdd/ReadVariableOpReadVariableOp/encoder_z_var_biasadd_readvariableop_z_var_bias*
_output_shapes
:*
dtype0�
encoder/z_var/BiasAddBiasAddencoder/z_var/MatMul:product:0,encoder/z_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
encoder/z/ShapeShapeencoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
::��g
encoder/z/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
encoder/z/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
encoder/z/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder/z/strided_sliceStridedSliceencoder/z/Shape:output:0&encoder/z/strided_slice/stack:output:0(encoder/z/strided_slice/stack_1:output:0(encoder/z/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
encoder/z/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
encoder/z/random_normal/shapePack encoder/z/strided_slice:output:0(encoder/z/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:a
encoder/z/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    c
encoder/z/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,encoder/z/random_normal/RandomStandardNormalRandomStandardNormal&encoder/z/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2���*
seed���)�
encoder/z/random_normal/mulMul5encoder/z/random_normal/RandomStandardNormal:output:0'encoder/z/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
encoder/z/random_normalAddV2encoder/z/random_normal/mul:z:0%encoder/z/random_normal/mean:output:0*
T0*'
_output_shapes
:���������T
encoder/z/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder/z/mulMulencoder/z/mul/x:output:0encoder/z_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������Y
encoder/z/ExpExpencoder/z/mul:z:0*
T0*'
_output_shapes
:���������x
encoder/z/mul_1Mulencoder/z/Exp:y:0encoder/z/random_normal:z:0*
T0*'
_output_shapes
:���������~
encoder/z/addAddV2encoder/z_mean/BiasAdd:output:0encoder/z/mul_1:z:0*
T0*'
_output_shapes
:����������
%decoder/dense_1/MatMul/ReadVariableOpReadVariableOp4decoder_dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

:*
dtype0�
decoder/dense_1/MatMulMatMulencoder/z/add:z:0-decoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&decoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp3decoder_dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype0�
decoder/dense_1/BiasAddBiasAdd decoder/dense_1/MatMul:product:0.decoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
decoder/dense_1/ReluRelu decoder/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
%decoder/dense_2/MatMul/ReadVariableOpReadVariableOp4decoder_dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes

:*
dtype0�
decoder/dense_2/MatMulMatMul"decoder/dense_1/Relu:activations:0-decoder/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&decoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp3decoder_dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:*
dtype0�
decoder/dense_2/BiasAddBiasAdd decoder/dense_2/MatMul:product:0.decoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
decoder/dense_2/SigmoidSigmoid decoder/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydecoder/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^decoder/dense_1/BiasAdd/ReadVariableOp&^decoder/dense_1/MatMul/ReadVariableOp'^decoder/dense_2/BiasAdd/ReadVariableOp&^decoder/dense_2/MatMul/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp&^encoder/z_mean/BiasAdd/ReadVariableOp%^encoder/z_mean/MatMul/ReadVariableOp%^encoder/z_var/BiasAdd/ReadVariableOp$^encoder/z_var/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 2P
&decoder/dense_1/BiasAdd/ReadVariableOp&decoder/dense_1/BiasAdd/ReadVariableOp2N
%decoder/dense_1/MatMul/ReadVariableOp%decoder/dense_1/MatMul/ReadVariableOp2P
&decoder/dense_2/BiasAdd/ReadVariableOp&decoder/dense_2/BiasAdd/ReadVariableOp2N
%decoder/dense_2/MatMul/ReadVariableOp%decoder/dense_2/MatMul/ReadVariableOp2L
$encoder/dense/BiasAdd/ReadVariableOp$encoder/dense/BiasAdd/ReadVariableOp2J
#encoder/dense/MatMul/ReadVariableOp#encoder/dense/MatMul/ReadVariableOp2N
%encoder/z_mean/BiasAdd/ReadVariableOp%encoder/z_mean/BiasAdd/ReadVariableOp2L
$encoder/z_mean/MatMul/ReadVariableOp$encoder/z_mean/MatMul/ReadVariableOp2L
$encoder/z_var/BiasAdd/ReadVariableOp$encoder/z_var/BiasAdd/ReadVariableOp2J
#encoder/z_var/MatMul/ReadVariableOp#encoder/z_var/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1251

inputs&
encoder_dense_kernel: 
encoder_dense_bias:'
encoder_z_mean_kernel:!
encoder_z_mean_bias:&
encoder_z_var_kernel: 
encoder_z_var_bias:(
decoder_dense_1_kernel:"
decoder_dense_1_bias:(
decoder_dense_2_kernel:"
decoder_dense_2_bias:
identity��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_dense_kernelencoder_dense_biasencoder_z_mean_kernelencoder_z_mean_biasencoder_z_var_kernelencoder_z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_837�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_dense_1_kerneldecoder_dense_1_biasdecoder_dense_2_kerneldecoder_dense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1085w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_decoder_layer_call_and_return_conditional_losses_1043

z_sampling(
dense_1_dense_1_kernel:"
dense_1_dense_1_bias:(
dense_2_dense_2_kernel:"
dense_2_dense_2_bias:
identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1023�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling
�
j
;__inference_z_layer_call_and_return_conditional_losses_1723
inputs_0
inputs_1
identity�K
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2���*
seed���)�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:���������|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:���������E
ExpExpmul:z:0*
T0*'
_output_shapes
:���������Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:���������S
addAddV2inputs_0	mul_1:z:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*9
_input_shapes(
&:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�(
�
A__inference_encoder_layer_call_and_return_conditional_losses_1583

inputs:
(dense_matmul_readvariableop_dense_kernel:5
'dense_biasadd_readvariableop_dense_bias:<
*z_mean_matmul_readvariableop_z_mean_kernel:7
)z_mean_biasadd_readvariableop_z_mean_bias::
(z_var_matmul_readvariableop_z_var_kernel:5
'z_var_biasadd_readvariableop_z_var_bias:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�z_mean/BiasAdd/ReadVariableOp�z_mean/MatMul/ReadVariableOp�z_var/BiasAdd/ReadVariableOp�z_var/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes

:*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
z_mean/MatMul/ReadVariableOpReadVariableOp*z_mean_matmul_readvariableop_z_mean_kernel*
_output_shapes

:*
dtype0�
z_mean/MatMulMatMuldense/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_mean/BiasAdd/ReadVariableOpReadVariableOp)z_mean_biasadd_readvariableop_z_mean_bias*
_output_shapes
:*
dtype0�
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_var/MatMul/ReadVariableOpReadVariableOp(z_var_matmul_readvariableop_z_var_kernel*
_output_shapes

:*
dtype0�
z_var/MatMulMatMuldense/Relu:activations:0#z_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_var/BiasAdd/ReadVariableOpReadVariableOp'z_var_biasadd_readvariableop_z_var_bias*
_output_shapes
:*
dtype0�
z_var/BiasAddBiasAddz_var/MatMul:product:0$z_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\
z/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
::��_
z/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: a
z/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
z/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
z/strided_sliceStridedSlicez/Shape:output:0z/strided_slice/stack:output:0 z/strided_slice/stack_1:output:0 z/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
z/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
z/random_normal/shapePackz/strided_slice:output:0 z/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:Y
z/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    [
z/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$z/random_normal/RandomStandardNormalRandomStandardNormalz/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2��*
seed���)�
z/random_normal/mulMul-z/random_normal/RandomStandardNormal:output:0z/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
z/random_normalAddV2z/random_normal/mul:z:0z/random_normal/mean:output:0*
T0*'
_output_shapes
:���������L
z/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
z/mulMulz/mul/x:output:0z_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������I
z/ExpExp	z/mul:z:0*
T0*'
_output_shapes
:���������`
z/mul_1Mul	z/Exp:y:0z/random_normal:z:0*
T0*'
_output_shapes
:���������f
z/addAddV2z_mean/BiasAdd:output:0z/mul_1:z:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	z/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp^z_var/BiasAdd/ReadVariableOp^z_var/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp2<
z_var/BiasAdd/ReadVariableOpz_var/BiasAdd/ReadVariableOp2:
z_var/MatMul/ReadVariableOpz_var/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
&__inference_vae_mlp_layer_call_fn_1264
encoder_input
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias: 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1251o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�
�
&__inference_decoder_layer_call_fn_1601

inputs 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1085o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1201
encoder_input&
encoder_dense_kernel: 
encoder_dense_bias:'
encoder_z_mean_kernel:!
encoder_z_mean_bias:&
encoder_z_var_kernel: 
encoder_z_var_bias:(
decoder_dense_1_kernel:"
decoder_dense_1_bias:(
decoder_dense_2_kernel:"
decoder_dense_2_bias:
identity��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallencoder_inputencoder_dense_kernelencoder_dense_biasencoder_z_mean_kernelencoder_z_mean_biasencoder_z_var_kernelencoder_z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_837�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_dense_1_kerneldecoder_dense_1_biasdecoder_dense_2_kerneldecoder_dense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1085w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�	
�
@__inference_z_mean_layer_call_and_return_conditional_losses_1672

inputs5
#matmul_readvariableop_z_mean_kernel:0
"biasadd_readvariableop_z_mean_bias:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpy
MatMul/ReadVariableOpReadVariableOp#matmul_readvariableop_z_mean_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������u
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_z_mean_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_decoder_layer_call_and_return_conditional_losses_1637

inputs>
,dense_1_matmul_readvariableop_dense_1_kernel:9
+dense_1_biasadd_readvariableop_dense_1_bias:>
,dense_2_matmul_readvariableop_dense_2_kernel:9
+dense_2_biasadd_readvariableop_dense_2_bias:
identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense_1/MatMul/ReadVariableOpReadVariableOp,dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

:*
dtype0y
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp+dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_2/MatMul/ReadVariableOpReadVariableOp,dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes

:*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
"__inference_signature_wrapper_1343
encoder_input
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias: 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__wrapped_model_687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�
g
:__inference_z_layer_call_and_return_conditional_losses_792

inputs
inputs_1
identity�I
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2���*
seed���)�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:���������|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:���������E
ExpExpmul:z:0*
T0*'
_output_shapes
:���������Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:���������Q
addAddV2inputs	mul_1:z:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_z_var_layer_call_fn_1679

inputs
z_var_kernel:

z_var_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsz_var_kernel
z_var_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_z_var_layer_call_and_return_conditional_losses_730o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
j
;__inference_z_layer_call_and_return_conditional_losses_1745
inputs_0
inputs_1
identity�K
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2Є�*
seed���)�
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:���������|
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:���������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?V
mulMulmul/x:output:0inputs_1*
T0*'
_output_shapes
:���������E
ExpExpmul:z:0*
T0*'
_output_shapes
:���������Z
mul_1MulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:���������S
addAddV2inputs_0	mul_1:z:0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*9
_input_shapes(
&:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
͂
� 
__inference__traced_save_2014
file_prefix5
#read_disablecopyonread_dense_kernel:1
#read_1_disablecopyonread_dense_bias:8
&read_2_disablecopyonread_z_mean_kernel:2
$read_3_disablecopyonread_z_mean_bias:7
%read_4_disablecopyonread_z_var_kernel:1
#read_5_disablecopyonread_z_var_bias:9
'read_6_disablecopyonread_dense_1_kernel:3
%read_7_disablecopyonread_dense_1_bias:9
'read_8_disablecopyonread_dense_2_kernel:3
%read_9_disablecopyonread_dense_2_bias:6
,read_10_disablecopyonread_training_adam_iter:	 8
.read_11_disablecopyonread_training_adam_beta_1: 8
.read_12_disablecopyonread_training_adam_beta_2: 7
-read_13_disablecopyonread_training_adam_decay: ?
5read_14_disablecopyonread_training_adam_learning_rate: H
6read_15_disablecopyonread_training_adam_dense_kernel_m:B
4read_16_disablecopyonread_training_adam_dense_bias_m:I
7read_17_disablecopyonread_training_adam_z_mean_kernel_m:C
5read_18_disablecopyonread_training_adam_z_mean_bias_m:H
6read_19_disablecopyonread_training_adam_z_var_kernel_m:B
4read_20_disablecopyonread_training_adam_z_var_bias_m:J
8read_21_disablecopyonread_training_adam_dense_1_kernel_m:D
6read_22_disablecopyonread_training_adam_dense_1_bias_m:J
8read_23_disablecopyonread_training_adam_dense_2_kernel_m:D
6read_24_disablecopyonread_training_adam_dense_2_bias_m:H
6read_25_disablecopyonread_training_adam_dense_kernel_v:B
4read_26_disablecopyonread_training_adam_dense_bias_v:I
7read_27_disablecopyonread_training_adam_z_mean_kernel_v:C
5read_28_disablecopyonread_training_adam_z_mean_bias_v:H
6read_29_disablecopyonread_training_adam_z_var_kernel_v:B
4read_30_disablecopyonread_training_adam_z_var_bias_v:J
8read_31_disablecopyonread_training_adam_dense_1_kernel_v:D
6read_32_disablecopyonread_training_adam_dense_1_bias_v:J
8read_33_disablecopyonread_training_adam_dense_2_kernel_v:D
6read_34_disablecopyonread_training_adam_dense_2_bias_v:
savev2_const
identity_71��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_2/DisableCopyOnReadDisableCopyOnRead&read_2_disablecopyonread_z_mean_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp&read_2_disablecopyonread_z_mean_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_z_mean_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_z_mean_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_z_var_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_z_var_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:w
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_z_var_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_z_var_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_2_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_2_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_training_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_training_adam_iter^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: �
Read_11/DisableCopyOnReadDisableCopyOnRead.read_11_disablecopyonread_training_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp.read_11_disablecopyonread_training_adam_beta_1^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_12/DisableCopyOnReadDisableCopyOnRead.read_12_disablecopyonread_training_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp.read_12_disablecopyonread_training_adam_beta_2^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_training_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_training_adam_decay^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_training_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_training_adam_learning_rate^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead6read_15_disablecopyonread_training_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp6read_15_disablecopyonread_training_adam_dense_kernel_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_16/DisableCopyOnReadDisableCopyOnRead4read_16_disablecopyonread_training_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp4read_16_disablecopyonread_training_adam_dense_bias_m^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_17/DisableCopyOnReadDisableCopyOnRead7read_17_disablecopyonread_training_adam_z_mean_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp7read_17_disablecopyonread_training_adam_z_mean_kernel_m^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_18/DisableCopyOnReadDisableCopyOnRead5read_18_disablecopyonread_training_adam_z_mean_bias_m"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp5read_18_disablecopyonread_training_adam_z_mean_bias_m^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead6read_19_disablecopyonread_training_adam_z_var_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp6read_19_disablecopyonread_training_adam_z_var_kernel_m^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_20/DisableCopyOnReadDisableCopyOnRead4read_20_disablecopyonread_training_adam_z_var_bias_m"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp4read_20_disablecopyonread_training_adam_z_var_bias_m^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead8read_21_disablecopyonread_training_adam_dense_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp8read_21_disablecopyonread_training_adam_dense_1_kernel_m^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_22/DisableCopyOnReadDisableCopyOnRead6read_22_disablecopyonread_training_adam_dense_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp6read_22_disablecopyonread_training_adam_dense_1_bias_m^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead8read_23_disablecopyonread_training_adam_dense_2_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp8read_23_disablecopyonread_training_adam_dense_2_kernel_m^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_24/DisableCopyOnReadDisableCopyOnRead6read_24_disablecopyonread_training_adam_dense_2_bias_m"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp6read_24_disablecopyonread_training_adam_dense_2_bias_m^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead6read_25_disablecopyonread_training_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp6read_25_disablecopyonread_training_adam_dense_kernel_v^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_26/DisableCopyOnReadDisableCopyOnRead4read_26_disablecopyonread_training_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp4read_26_disablecopyonread_training_adam_dense_bias_v^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnRead7read_27_disablecopyonread_training_adam_z_mean_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp7read_27_disablecopyonread_training_adam_z_mean_kernel_v^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_28/DisableCopyOnReadDisableCopyOnRead5read_28_disablecopyonread_training_adam_z_mean_bias_v"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp5read_28_disablecopyonread_training_adam_z_mean_bias_v^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_29/DisableCopyOnReadDisableCopyOnRead6read_29_disablecopyonread_training_adam_z_var_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp6read_29_disablecopyonread_training_adam_z_var_kernel_v^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_30/DisableCopyOnReadDisableCopyOnRead4read_30_disablecopyonread_training_adam_z_var_bias_v"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp4read_30_disablecopyonread_training_adam_z_var_bias_v^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead8read_31_disablecopyonread_training_adam_dense_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp8read_31_disablecopyonread_training_adam_dense_1_kernel_v^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_32/DisableCopyOnReadDisableCopyOnRead6read_32_disablecopyonread_training_adam_dense_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp6read_32_disablecopyonread_training_adam_dense_1_bias_v^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead8read_33_disablecopyonread_training_adam_dense_2_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp8read_33_disablecopyonread_training_adam_dense_2_kernel_v^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_34/DisableCopyOnReadDisableCopyOnRead6read_34_disablecopyonread_training_adam_dense_2_bias_v"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp6read_34_disablecopyonread_training_adam_dense_2_bias_v^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *2
dtypes(
&2$	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_70Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_71IdentityIdentity_70:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_71Identity_71:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:$

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
A__inference_decoder_layer_call_and_return_conditional_losses_1619

inputs>
,dense_1_matmul_readvariableop_dense_1_kernel:9
+dense_1_biasadd_readvariableop_dense_1_bias:>
,dense_2_matmul_readvariableop_dense_2_kernel:9
+dense_2_biasadd_readvariableop_dense_2_bias:
identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense_1/MatMul/ReadVariableOpReadVariableOp,dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

:*
dtype0y
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp+dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_2/MatMul/ReadVariableOpReadVariableOp,dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes

:*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
@__inference_encoder_layer_call_and_return_conditional_losses_759
encoder_input$
dense_dense_kernel:
dense_dense_bias:&
z_mean_z_mean_kernel: 
z_mean_z_mean_bias:$
z_var_z_var_kernel:
z_var_z_var_bias:
identity��dense/StatefulPartitionedCall�z/StatefulPartitionedCall�z_mean/StatefulPartitionedCall�z_var/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallencoder_inputdense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_702�
z_mean/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_mean_z_mean_kernelz_mean_z_mean_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_z_mean_layer_call_and_return_conditional_losses_716�
z_var/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0z_var_z_var_kernelz_var_z_var_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_z_var_layer_call_and_return_conditional_losses_730�
z/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0&z_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *C
f>R<
:__inference_z_layer_call_and_return_conditional_losses_756q
IdentityIdentity"z/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall^z/StatefulPartitionedCall^z_mean/StatefulPartitionedCall^z_var/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall26
z/StatefulPartitionedCallz/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall2>
z_var/StatefulPartitionedCallz_var/StatefulPartitionedCall:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�
�
%__inference_z_mean_layer_call_fn_1662

inputs
z_mean_kernel:
z_mean_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsz_mean_kernelz_mean_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_z_mean_layer_call_and_return_conditional_losses_716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_1_layer_call_fn_1752

inputs 
dense_1_kernel:
dense_1_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_kerneldense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1023o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�

__inference__wrapped_model_687
encoder_inputJ
8vae_mlp_encoder_dense_matmul_readvariableop_dense_kernel:E
7vae_mlp_encoder_dense_biasadd_readvariableop_dense_bias:L
:vae_mlp_encoder_z_mean_matmul_readvariableop_z_mean_kernel:G
9vae_mlp_encoder_z_mean_biasadd_readvariableop_z_mean_bias:J
8vae_mlp_encoder_z_var_matmul_readvariableop_z_var_kernel:E
7vae_mlp_encoder_z_var_biasadd_readvariableop_z_var_bias:N
<vae_mlp_decoder_dense_1_matmul_readvariableop_dense_1_kernel:I
;vae_mlp_decoder_dense_1_biasadd_readvariableop_dense_1_bias:N
<vae_mlp_decoder_dense_2_matmul_readvariableop_dense_2_kernel:I
;vae_mlp_decoder_dense_2_biasadd_readvariableop_dense_2_bias:
identity��.vae_mlp/decoder/dense_1/BiasAdd/ReadVariableOp�-vae_mlp/decoder/dense_1/MatMul/ReadVariableOp�.vae_mlp/decoder/dense_2/BiasAdd/ReadVariableOp�-vae_mlp/decoder/dense_2/MatMul/ReadVariableOp�,vae_mlp/encoder/dense/BiasAdd/ReadVariableOp�+vae_mlp/encoder/dense/MatMul/ReadVariableOp�-vae_mlp/encoder/z_mean/BiasAdd/ReadVariableOp�,vae_mlp/encoder/z_mean/MatMul/ReadVariableOp�,vae_mlp/encoder/z_var/BiasAdd/ReadVariableOp�+vae_mlp/encoder/z_var/MatMul/ReadVariableOp�
+vae_mlp/encoder/dense/MatMul/ReadVariableOpReadVariableOp8vae_mlp_encoder_dense_matmul_readvariableop_dense_kernel*
_output_shapes

:*
dtype0�
vae_mlp/encoder/dense/MatMulMatMulencoder_input3vae_mlp/encoder/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,vae_mlp/encoder/dense/BiasAdd/ReadVariableOpReadVariableOp7vae_mlp_encoder_dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype0�
vae_mlp/encoder/dense/BiasAddBiasAdd&vae_mlp/encoder/dense/MatMul:product:04vae_mlp/encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
vae_mlp/encoder/dense/ReluRelu&vae_mlp/encoder/dense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
,vae_mlp/encoder/z_mean/MatMul/ReadVariableOpReadVariableOp:vae_mlp_encoder_z_mean_matmul_readvariableop_z_mean_kernel*
_output_shapes

:*
dtype0�
vae_mlp/encoder/z_mean/MatMulMatMul(vae_mlp/encoder/dense/Relu:activations:04vae_mlp/encoder/z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-vae_mlp/encoder/z_mean/BiasAdd/ReadVariableOpReadVariableOp9vae_mlp_encoder_z_mean_biasadd_readvariableop_z_mean_bias*
_output_shapes
:*
dtype0�
vae_mlp/encoder/z_mean/BiasAddBiasAdd'vae_mlp/encoder/z_mean/MatMul:product:05vae_mlp/encoder/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+vae_mlp/encoder/z_var/MatMul/ReadVariableOpReadVariableOp8vae_mlp_encoder_z_var_matmul_readvariableop_z_var_kernel*
_output_shapes

:*
dtype0�
vae_mlp/encoder/z_var/MatMulMatMul(vae_mlp/encoder/dense/Relu:activations:03vae_mlp/encoder/z_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,vae_mlp/encoder/z_var/BiasAdd/ReadVariableOpReadVariableOp7vae_mlp_encoder_z_var_biasadd_readvariableop_z_var_bias*
_output_shapes
:*
dtype0�
vae_mlp/encoder/z_var/BiasAddBiasAdd&vae_mlp/encoder/z_var/MatMul:product:04vae_mlp/encoder/z_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
vae_mlp/encoder/z/ShapeShape'vae_mlp/encoder/z_mean/BiasAdd:output:0*
T0*
_output_shapes
::��o
%vae_mlp/encoder/z/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'vae_mlp/encoder/z/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'vae_mlp/encoder/z/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
vae_mlp/encoder/z/strided_sliceStridedSlice vae_mlp/encoder/z/Shape:output:0.vae_mlp/encoder/z/strided_slice/stack:output:00vae_mlp/encoder/z/strided_slice/stack_1:output:00vae_mlp/encoder/z/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'vae_mlp/encoder/z/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
%vae_mlp/encoder/z/random_normal/shapePack(vae_mlp/encoder/z/strided_slice:output:00vae_mlp/encoder/z/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:i
$vae_mlp/encoder/z/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    k
&vae_mlp/encoder/z/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4vae_mlp/encoder/z/random_normal/RandomStandardNormalRandomStandardNormal.vae_mlp/encoder/z/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2���*
seed���)�
#vae_mlp/encoder/z/random_normal/mulMul=vae_mlp/encoder/z/random_normal/RandomStandardNormal:output:0/vae_mlp/encoder/z/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
vae_mlp/encoder/z/random_normalAddV2'vae_mlp/encoder/z/random_normal/mul:z:0-vae_mlp/encoder/z/random_normal/mean:output:0*
T0*'
_output_shapes
:���������\
vae_mlp/encoder/z/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
vae_mlp/encoder/z/mulMul vae_mlp/encoder/z/mul/x:output:0&vae_mlp/encoder/z_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
vae_mlp/encoder/z/ExpExpvae_mlp/encoder/z/mul:z:0*
T0*'
_output_shapes
:����������
vae_mlp/encoder/z/mul_1Mulvae_mlp/encoder/z/Exp:y:0#vae_mlp/encoder/z/random_normal:z:0*
T0*'
_output_shapes
:����������
vae_mlp/encoder/z/addAddV2'vae_mlp/encoder/z_mean/BiasAdd:output:0vae_mlp/encoder/z/mul_1:z:0*
T0*'
_output_shapes
:����������
-vae_mlp/decoder/dense_1/MatMul/ReadVariableOpReadVariableOp<vae_mlp_decoder_dense_1_matmul_readvariableop_dense_1_kernel*
_output_shapes

:*
dtype0�
vae_mlp/decoder/dense_1/MatMulMatMulvae_mlp/encoder/z/add:z:05vae_mlp/decoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.vae_mlp/decoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp;vae_mlp_decoder_dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes
:*
dtype0�
vae_mlp/decoder/dense_1/BiasAddBiasAdd(vae_mlp/decoder/dense_1/MatMul:product:06vae_mlp/decoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
vae_mlp/decoder/dense_1/ReluRelu(vae_mlp/decoder/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
-vae_mlp/decoder/dense_2/MatMul/ReadVariableOpReadVariableOp<vae_mlp_decoder_dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes

:*
dtype0�
vae_mlp/decoder/dense_2/MatMulMatMul*vae_mlp/decoder/dense_1/Relu:activations:05vae_mlp/decoder/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.vae_mlp/decoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp;vae_mlp_decoder_dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:*
dtype0�
vae_mlp/decoder/dense_2/BiasAddBiasAdd(vae_mlp/decoder/dense_2/MatMul:product:06vae_mlp/decoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
vae_mlp/decoder/dense_2/SigmoidSigmoid(vae_mlp/decoder/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#vae_mlp/decoder/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^vae_mlp/decoder/dense_1/BiasAdd/ReadVariableOp.^vae_mlp/decoder/dense_1/MatMul/ReadVariableOp/^vae_mlp/decoder/dense_2/BiasAdd/ReadVariableOp.^vae_mlp/decoder/dense_2/MatMul/ReadVariableOp-^vae_mlp/encoder/dense/BiasAdd/ReadVariableOp,^vae_mlp/encoder/dense/MatMul/ReadVariableOp.^vae_mlp/encoder/z_mean/BiasAdd/ReadVariableOp-^vae_mlp/encoder/z_mean/MatMul/ReadVariableOp-^vae_mlp/encoder/z_var/BiasAdd/ReadVariableOp,^vae_mlp/encoder/z_var/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 2`
.vae_mlp/decoder/dense_1/BiasAdd/ReadVariableOp.vae_mlp/decoder/dense_1/BiasAdd/ReadVariableOp2^
-vae_mlp/decoder/dense_1/MatMul/ReadVariableOp-vae_mlp/decoder/dense_1/MatMul/ReadVariableOp2`
.vae_mlp/decoder/dense_2/BiasAdd/ReadVariableOp.vae_mlp/decoder/dense_2/BiasAdd/ReadVariableOp2^
-vae_mlp/decoder/dense_2/MatMul/ReadVariableOp-vae_mlp/decoder/dense_2/MatMul/ReadVariableOp2\
,vae_mlp/encoder/dense/BiasAdd/ReadVariableOp,vae_mlp/encoder/dense/BiasAdd/ReadVariableOp2Z
+vae_mlp/encoder/dense/MatMul/ReadVariableOp+vae_mlp/encoder/dense/MatMul/ReadVariableOp2^
-vae_mlp/encoder/z_mean/BiasAdd/ReadVariableOp-vae_mlp/encoder/z_mean/BiasAdd/ReadVariableOp2\
,vae_mlp/encoder/z_mean/MatMul/ReadVariableOp,vae_mlp/encoder/z_mean/MatMul/ReadVariableOp2\
,vae_mlp/encoder/z_var/BiasAdd/ReadVariableOp,vae_mlp/encoder/z_var/BiasAdd/ReadVariableOp2Z
+vae_mlp/encoder/z_var/MatMul/ReadVariableOp+vae_mlp/encoder/z_var/MatMul/ReadVariableOp:V R
'
_output_shapes
:���������
'
_user_specified_nameencoder_input
�

�
&__inference_vae_mlp_layer_call_fn_1358

inputs
dense_kernel:

dense_bias:
z_mean_kernel:
z_mean_bias:
z_var_kernel:

z_var_bias: 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_biasz_mean_kernelz_mean_biasz_var_kernel
z_var_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_decoder_layer_call_fn_1092

z_sampling 
dense_1_kernel:
dense_1_bias: 
dense_2_kernel:
dense_2_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
z_samplingdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1085o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:���������
$
_user_specified_name
z_sampling
�(
�
A__inference_encoder_layer_call_and_return_conditional_losses_1543

inputs:
(dense_matmul_readvariableop_dense_kernel:5
'dense_biasadd_readvariableop_dense_bias:<
*z_mean_matmul_readvariableop_z_mean_kernel:7
)z_mean_biasadd_readvariableop_z_mean_bias::
(z_var_matmul_readvariableop_z_var_kernel:5
'z_var_biasadd_readvariableop_z_var_bias:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�z_mean/BiasAdd/ReadVariableOp�z_mean/MatMul/ReadVariableOp�z_var/BiasAdd/ReadVariableOp�z_var/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes

:*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
z_mean/MatMul/ReadVariableOpReadVariableOp*z_mean_matmul_readvariableop_z_mean_kernel*
_output_shapes

:*
dtype0�
z_mean/MatMulMatMuldense/Relu:activations:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_mean/BiasAdd/ReadVariableOpReadVariableOp)z_mean_biasadd_readvariableop_z_mean_bias*
_output_shapes
:*
dtype0�
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_var/MatMul/ReadVariableOpReadVariableOp(z_var_matmul_readvariableop_z_var_kernel*
_output_shapes

:*
dtype0�
z_var/MatMulMatMuldense/Relu:activations:0#z_var/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
z_var/BiasAdd/ReadVariableOpReadVariableOp'z_var_biasadd_readvariableop_z_var_bias*
_output_shapes
:*
dtype0�
z_var/BiasAddBiasAddz_var/MatMul:product:0$z_var/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\
z/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
::��_
z/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: a
z/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
z/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
z/strided_sliceStridedSlicez/Shape:output:0z/strided_slice/stack:output:0 z/strided_slice/stack_1:output:0 z/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
z/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
z/random_normal/shapePackz/strided_slice:output:0 z/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:Y
z/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    [
z/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$z/random_normal/RandomStandardNormalRandomStandardNormalz/random_normal/shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed2���*
seed���)�
z/random_normal/mulMul-z/random_normal/RandomStandardNormal:output:0z/random_normal/stddev:output:0*
T0*'
_output_shapes
:����������
z/random_normalAddV2z/random_normal/mul:z:0z/random_normal/mean:output:0*
T0*'
_output_shapes
:���������L
z/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?h
z/mulMulz/mul/x:output:0z_var/BiasAdd:output:0*
T0*'
_output_shapes
:���������I
z/ExpExp	z/mul:z:0*
T0*'
_output_shapes
:���������`
z/mul_1Mul	z/Exp:y:0z/random_normal:z:0*
T0*'
_output_shapes
:���������f
z/addAddV2z_mean/BiasAdd:output:0z/mul_1:z:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	z/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp^z_var/BiasAdd/ReadVariableOp^z_var/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:���������: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp2<
z_var/BiasAdd/ReadVariableOpz_var/BiasAdd/ReadVariableOp2:
z_var/MatMul/ReadVariableOpz_var/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_decoder_layer_call_and_return_conditional_losses_1085

inputs(
dense_1_dense_1_kernel:"
dense_1_dense_1_bias:(
dense_2_dense_2_kernel:"
dense_2_dense_2_bias:
identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1023�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1220

inputs&
encoder_dense_kernel: 
encoder_dense_bias:'
encoder_z_mean_kernel:!
encoder_z_mean_bias:&
encoder_z_var_kernel: 
encoder_z_var_bias:(
decoder_dense_1_kernel:"
decoder_dense_1_bias:(
decoder_dense_2_kernel:"
decoder_dense_2_bias:
identity��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_dense_kernelencoder_dense_biasencoder_z_mean_kernelencoder_z_mean_biasencoder_z_var_kernelencoder_z_var_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_encoder_layer_call_and_return_conditional_losses_812�
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_dense_1_kerneldecoder_dense_1_biasdecoder_dense_2_kerneldecoder_dense_2_bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1066w
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
G
encoder_input6
serving_default_encoder_input:0���������;
decoder0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
f
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9"
trackable_list_wrapper
f
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
/trace_0
0trace_1
1trace_2
2trace_32�
&__inference_vae_mlp_layer_call_fn_1233
&__inference_vae_mlp_layer_call_fn_1264
&__inference_vae_mlp_layer_call_fn_1358
&__inference_vae_mlp_layer_call_fn_1373�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z/trace_0z0trace_1z1trace_2z2trace_3
�
3trace_0
4trace_1
5trace_2
6trace_32�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1185
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1201
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1427
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1481�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z3trace_0z4trace_1z5trace_2z6trace_3
�B�
__inference__wrapped_model_687encoder_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
7iter

8beta_1

9beta_2
	:decay
;learning_rate m�!m�"m�#m�$m�%m�&m�'m�(m�)m� v�!v�"v�#v�$v�%v�&v�'v�(v�)v�"
	optimizer
,
<serving_default"
signature_map
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

 kernel
!bias"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
J
 0
!1
"2
#3
$4
%5"
trackable_list_wrapper
J
 0
!1
"2
#3
$4
%5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ztrace_0
[trace_1
\trace_2
]trace_32�
%__inference_encoder_layer_call_fn_821
%__inference_encoder_layer_call_fn_846
&__inference_encoder_layer_call_fn_1492
&__inference_encoder_layer_call_fn_1503�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zZtrace_0z[trace_1z\trace_2z]trace_3
�
^trace_0
_trace_1
`trace_2
atrace_32�
@__inference_encoder_layer_call_and_return_conditional_losses_759
@__inference_encoder_layer_call_and_return_conditional_losses_795
A__inference_encoder_layer_call_and_return_conditional_losses_1543
A__inference_encoder_layer_call_and_return_conditional_losses_1583�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z^trace_0z_trace_1z`trace_2zatrace_3
"
_tf_keras_input_layer
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

(kernel
)bias"
_tf_keras_layer
<
&0
'1
(2
)3"
trackable_list_wrapper
<
&0
'1
(2
)3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
strace_0
ttrace_1
utrace_2
vtrace_32�
&__inference_decoder_layer_call_fn_1073
&__inference_decoder_layer_call_fn_1092
&__inference_decoder_layer_call_fn_1592
&__inference_decoder_layer_call_fn_1601�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0zttrace_1zutrace_2zvtrace_3
�
wtrace_0
xtrace_1
ytrace_2
ztrace_32�
A__inference_decoder_layer_call_and_return_conditional_losses_1043
A__inference_decoder_layer_call_and_return_conditional_losses_1053
A__inference_decoder_layer_call_and_return_conditional_losses_1619
A__inference_decoder_layer_call_and_return_conditional_losses_1637�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0zxtrace_1zytrace_2zztrace_3
:2dense/kernel
:2
dense/bias
:2z_mean/kernel
:2z_mean/bias
:2z_var/kernel
:2
z_var/bias
 :2dense_1/kernel
:2dense_1/bias
 :2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_vae_mlp_layer_call_fn_1233encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_vae_mlp_layer_call_fn_1264encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_vae_mlp_layer_call_fn_1358inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_vae_mlp_layer_call_fn_1373inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1185encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1201encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1427inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1481inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2training/Adam/iter
: (2training/Adam/beta_1
: (2training/Adam/beta_2
: (2training/Adam/decay
%:# (2training/Adam/learning_rate
�B�
"__inference_signature_wrapper_1343encoder_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_dense_layer_call_fn_1644�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
?__inference_dense_layer_call_and_return_conditional_losses_1655�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_z_mean_layer_call_fn_1662�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_z_mean_layer_call_and_return_conditional_losses_1672�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_z_var_layer_call_fn_1679�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
?__inference_z_var_layer_call_and_return_conditional_losses_1689�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
 __inference_z_layer_call_fn_1695
 __inference_z_layer_call_fn_1701�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
;__inference_z_layer_call_and_return_conditional_losses_1723
;__inference_z_layer_call_and_return_conditional_losses_1745�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_encoder_layer_call_fn_821encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_encoder_layer_call_fn_846encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_encoder_layer_call_fn_1492inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_encoder_layer_call_fn_1503inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_encoder_layer_call_and_return_conditional_losses_759encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_encoder_layer_call_and_return_conditional_losses_795encoder_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_encoder_layer_call_and_return_conditional_losses_1543inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_encoder_layer_call_and_return_conditional_losses_1583inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_1_layer_call_fn_1752�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_dense_1_layer_call_and_return_conditional_losses_1763�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_2_layer_call_fn_1770�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_dense_2_layer_call_and_return_conditional_losses_1781�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_decoder_layer_call_fn_1073
z_sampling"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_decoder_layer_call_fn_1092
z_sampling"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_decoder_layer_call_fn_1592inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_decoder_layer_call_fn_1601inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_decoder_layer_call_and_return_conditional_losses_1043
z_sampling"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_decoder_layer_call_and_return_conditional_losses_1053
z_sampling"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_decoder_layer_call_and_return_conditional_losses_1619inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_decoder_layer_call_and_return_conditional_losses_1637inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_dense_layer_call_fn_1644inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_dense_layer_call_and_return_conditional_losses_1655inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_z_mean_layer_call_fn_1662inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_z_mean_layer_call_and_return_conditional_losses_1672inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_z_var_layer_call_fn_1679inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_z_var_layer_call_and_return_conditional_losses_1689inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
 __inference_z_layer_call_fn_1695inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
 __inference_z_layer_call_fn_1701inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
;__inference_z_layer_call_and_return_conditional_losses_1723inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
;__inference_z_layer_call_and_return_conditional_losses_1745inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_1_layer_call_fn_1752inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_1_layer_call_and_return_conditional_losses_1763inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_2_layer_call_fn_1770inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_2_layer_call_and_return_conditional_losses_1781inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,:*2training/Adam/dense/kernel/m
&:$2training/Adam/dense/bias/m
-:+2training/Adam/z_mean/kernel/m
':%2training/Adam/z_mean/bias/m
,:*2training/Adam/z_var/kernel/m
&:$2training/Adam/z_var/bias/m
.:,2training/Adam/dense_1/kernel/m
(:&2training/Adam/dense_1/bias/m
.:,2training/Adam/dense_2/kernel/m
(:&2training/Adam/dense_2/bias/m
,:*2training/Adam/dense/kernel/v
&:$2training/Adam/dense/bias/v
-:+2training/Adam/z_mean/kernel/v
':%2training/Adam/z_mean/bias/v
,:*2training/Adam/z_var/kernel/v
&:$2training/Adam/z_var/bias/v
.:,2training/Adam/dense_1/kernel/v
(:&2training/Adam/dense_1/bias/v
.:,2training/Adam/dense_2/kernel/v
(:&2training/Adam/dense_2/bias/v�
__inference__wrapped_model_687w
 !"#$%&'()6�3
,�)
'�$
encoder_input���������
� "1�.
,
decoder!�
decoder����������
A__inference_decoder_layer_call_and_return_conditional_losses_1043q&'();�8
1�.
$�!

z_sampling���������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_decoder_layer_call_and_return_conditional_losses_1053q&'();�8
1�.
$�!

z_sampling���������
p 

 
� ",�)
"�
tensor_0���������
� �
A__inference_decoder_layer_call_and_return_conditional_losses_1619m&'()7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_decoder_layer_call_and_return_conditional_losses_1637m&'()7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
&__inference_decoder_layer_call_fn_1073f&'();�8
1�.
$�!

z_sampling���������
p

 
� "!�
unknown����������
&__inference_decoder_layer_call_fn_1092f&'();�8
1�.
$�!

z_sampling���������
p 

 
� "!�
unknown����������
&__inference_decoder_layer_call_fn_1592b&'()7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
&__inference_decoder_layer_call_fn_1601b&'()7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
A__inference_dense_1_layer_call_and_return_conditional_losses_1763c&'/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
&__inference_dense_1_layer_call_fn_1752X&'/�,
%�"
 �
inputs���������
� "!�
unknown����������
A__inference_dense_2_layer_call_and_return_conditional_losses_1781c()/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
&__inference_dense_2_layer_call_fn_1770X()/�,
%�"
 �
inputs���������
� "!�
unknown����������
?__inference_dense_layer_call_and_return_conditional_losses_1655c !/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
$__inference_dense_layer_call_fn_1644X !/�,
%�"
 �
inputs���������
� "!�
unknown����������
A__inference_encoder_layer_call_and_return_conditional_losses_1543o !"#$%7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_encoder_layer_call_and_return_conditional_losses_1583o !"#$%7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
@__inference_encoder_layer_call_and_return_conditional_losses_759v !"#$%>�;
4�1
'�$
encoder_input���������
p

 
� ",�)
"�
tensor_0���������
� �
@__inference_encoder_layer_call_and_return_conditional_losses_795v !"#$%>�;
4�1
'�$
encoder_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
&__inference_encoder_layer_call_fn_1492d !"#$%7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
&__inference_encoder_layer_call_fn_1503d !"#$%7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
%__inference_encoder_layer_call_fn_821k !"#$%>�;
4�1
'�$
encoder_input���������
p

 
� "!�
unknown����������
%__inference_encoder_layer_call_fn_846k !"#$%>�;
4�1
'�$
encoder_input���������
p 

 
� "!�
unknown����������
"__inference_signature_wrapper_1343�
 !"#$%&'()G�D
� 
=�:
8
encoder_input'�$
encoder_input���������"1�.
,
decoder!�
decoder����������
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1185z
 !"#$%&'()>�;
4�1
'�$
encoder_input���������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1201z
 !"#$%&'()>�;
4�1
'�$
encoder_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1427s
 !"#$%&'()7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_vae_mlp_layer_call_and_return_conditional_losses_1481s
 !"#$%&'()7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
&__inference_vae_mlp_layer_call_fn_1233o
 !"#$%&'()>�;
4�1
'�$
encoder_input���������
p

 
� "!�
unknown����������
&__inference_vae_mlp_layer_call_fn_1264o
 !"#$%&'()>�;
4�1
'�$
encoder_input���������
p 

 
� "!�
unknown����������
&__inference_vae_mlp_layer_call_fn_1358h
 !"#$%&'()7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
&__inference_vae_mlp_layer_call_fn_1373h
 !"#$%&'()7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
;__inference_z_layer_call_and_return_conditional_losses_1723�b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������

 
p
� ",�)
"�
tensor_0���������
� �
;__inference_z_layer_call_and_return_conditional_losses_1745�b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������

 
p 
� ",�)
"�
tensor_0���������
� �
 __inference_z_layer_call_fn_1695�b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������

 
p
� "!�
unknown����������
 __inference_z_layer_call_fn_1701�b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������

 
p 
� "!�
unknown����������
@__inference_z_mean_layer_call_and_return_conditional_losses_1672c"#/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
%__inference_z_mean_layer_call_fn_1662X"#/�,
%�"
 �
inputs���������
� "!�
unknown����������
?__inference_z_var_layer_call_and_return_conditional_losses_1689c$%/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
$__inference_z_var_layer_call_fn_1679X$%/�,
%�"
 �
inputs���������
� "!�
unknown���������