
ъО
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

њ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.12v2.7.0-217-g2a0f59ecfe68С

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
Ђ
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
: *
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
n
Adadelta/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdadelta/iter
g
!Adadelta/iter/Read/ReadVariableOpReadVariableOpAdadelta/iter*
_output_shapes
: *
dtype0	
p
Adadelta/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/decay
i
"Adadelta/decay/Read/ReadVariableOpReadVariableOpAdadelta/decay*
_output_shapes
: *
dtype0

Adadelta/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdadelta/learning_rate
y
*Adadelta/learning_rate/Read/ReadVariableOpReadVariableOpAdadelta/learning_rate*
_output_shapes
: *
dtype0
l
Adadelta/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/rho
e
 Adadelta/rho/Read/ReadVariableOpReadVariableOpAdadelta/rho*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Ж
/Adadelta/batch_normalization_1/gamma/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adadelta/batch_normalization_1/gamma/accum_grad
Џ
CAdadelta/batch_normalization_1/gamma/accum_grad/Read/ReadVariableOpReadVariableOp/Adadelta/batch_normalization_1/gamma/accum_grad*
_output_shapes
:*
dtype0
Д
.Adadelta/batch_normalization_1/beta/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adadelta/batch_normalization_1/beta/accum_grad
­
BAdadelta/batch_normalization_1/beta/accum_grad/Read/ReadVariableOpReadVariableOp.Adadelta/batch_normalization_1/beta/accum_grad*
_output_shapes
:*
dtype0
Њ
#Adadelta/conv2d_3/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adadelta/conv2d_3/kernel/accum_grad
Ѓ
7Adadelta/conv2d_3/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_3/kernel/accum_grad*&
_output_shapes
: *
dtype0

!Adadelta/conv2d_3/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adadelta/conv2d_3/bias/accum_grad

5Adadelta/conv2d_3/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_3/bias/accum_grad*
_output_shapes
: *
dtype0
Њ
#Adadelta/conv2d_4/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*4
shared_name%#Adadelta/conv2d_4/kernel/accum_grad
Ѓ
7Adadelta/conv2d_4/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_4/kernel/accum_grad*&
_output_shapes
: @*
dtype0

!Adadelta/conv2d_4/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adadelta/conv2d_4/bias/accum_grad

5Adadelta/conv2d_4/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_4/bias/accum_grad*
_output_shapes
:@*
dtype0
Њ
#Adadelta/conv2d_5/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*4
shared_name%#Adadelta/conv2d_5/kernel/accum_grad
Ѓ
7Adadelta/conv2d_5/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_5/kernel/accum_grad*&
_output_shapes
:@@*
dtype0

!Adadelta/conv2d_5/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adadelta/conv2d_5/bias/accum_grad

5Adadelta/conv2d_5/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_5/bias/accum_grad*
_output_shapes
:@*
dtype0
Ђ
"Adadelta/dense_2/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adadelta/dense_2/kernel/accum_grad

6Adadelta/dense_2/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_2/kernel/accum_grad* 
_output_shapes
:
*
dtype0

 Adadelta/dense_2/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adadelta/dense_2/bias/accum_grad

4Adadelta/dense_2/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_2/bias/accum_grad*
_output_shapes	
:*
dtype0
Ё
"Adadelta/dense_3/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adadelta/dense_3/kernel/accum_grad

6Adadelta/dense_3/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_3/kernel/accum_grad*
_output_shapes
:	*
dtype0

 Adadelta/dense_3/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adadelta/dense_3/bias/accum_grad

4Adadelta/dense_3/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_3/bias/accum_grad*
_output_shapes
:*
dtype0
Д
.Adadelta/batch_normalization_1/gamma/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adadelta/batch_normalization_1/gamma/accum_var
­
BAdadelta/batch_normalization_1/gamma/accum_var/Read/ReadVariableOpReadVariableOp.Adadelta/batch_normalization_1/gamma/accum_var*
_output_shapes
:*
dtype0
В
-Adadelta/batch_normalization_1/beta/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-Adadelta/batch_normalization_1/beta/accum_var
Ћ
AAdadelta/batch_normalization_1/beta/accum_var/Read/ReadVariableOpReadVariableOp-Adadelta/batch_normalization_1/beta/accum_var*
_output_shapes
:*
dtype0
Ј
"Adadelta/conv2d_3/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adadelta/conv2d_3/kernel/accum_var
Ё
6Adadelta/conv2d_3/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_3/kernel/accum_var*&
_output_shapes
: *
dtype0

 Adadelta/conv2d_3/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adadelta/conv2d_3/bias/accum_var

4Adadelta/conv2d_3/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/conv2d_3/bias/accum_var*
_output_shapes
: *
dtype0
Ј
"Adadelta/conv2d_4/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adadelta/conv2d_4/kernel/accum_var
Ё
6Adadelta/conv2d_4/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_4/kernel/accum_var*&
_output_shapes
: @*
dtype0

 Adadelta/conv2d_4/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adadelta/conv2d_4/bias/accum_var

4Adadelta/conv2d_4/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/conv2d_4/bias/accum_var*
_output_shapes
:@*
dtype0
Ј
"Adadelta/conv2d_5/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adadelta/conv2d_5/kernel/accum_var
Ё
6Adadelta/conv2d_5/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_5/kernel/accum_var*&
_output_shapes
:@@*
dtype0

 Adadelta/conv2d_5/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adadelta/conv2d_5/bias/accum_var

4Adadelta/conv2d_5/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/conv2d_5/bias/accum_var*
_output_shapes
:@*
dtype0
 
!Adadelta/dense_2/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adadelta/dense_2/kernel/accum_var

5Adadelta/dense_2/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_2/kernel/accum_var* 
_output_shapes
:
*
dtype0

Adadelta/dense_2/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adadelta/dense_2/bias/accum_var

3Adadelta/dense_2/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_2/bias/accum_var*
_output_shapes	
:*
dtype0

!Adadelta/dense_3/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adadelta/dense_3/kernel/accum_var

5Adadelta/dense_3/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_3/kernel/accum_var*
_output_shapes
:	*
dtype0

Adadelta/dense_3/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adadelta/dense_3/bias/accum_var

3Adadelta/dense_3/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_3/bias/accum_var*
_output_shapes
:*
dtype0

NoOpNoOp
U
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*УT
valueЙTBЖT BЏT
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
М
axis
	gamma
beta
moving_mean
moving_variance
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api


kernel
bias
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
w
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api


(kernel
)bias
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
w
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api


4kernel
5bias
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
w
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
w
#@_self_saveable_object_factories
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api


Ekernel
Fbias
#G_self_saveable_object_factories
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api


Lkernel
Mbias
#N_self_saveable_object_factories
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
э
Siter
	Tdecay
Ulearning_rate
Vrho
accum_grad
accum_grad
accum_grad
accum_grad(
accum_grad)
accum_grad4
accum_grad5
accum_grad E
accum_gradЁF
accum_gradЂL
accum_gradЃM
accum_gradЄ	accum_varЅ	accum_varІ	accum_varЇ	accum_varЈ(	accum_varЉ)	accum_varЊ4	accum_varЋ5	accum_varЌE	accum_var­F	accum_varЎL	accum_varЏM	accum_varА
 
 
f
0
1
2
3
4
5
(6
)7
48
59
E10
F11
L12
M13
V
0
1
2
3
(4
)5
46
57
E8
F9
L10
M11
 
­
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

0
1
 
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
 
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
$	variables
%trainable_variables
&regularization_losses
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
 
­
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
+	variables
,trainable_variables
-regularization_losses
 
 
 
 
­
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
0	variables
1trainable_variables
2regularization_losses
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
 
­
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 
 
 
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
<	variables
=trainable_variables
>regularization_losses
 
 
 
 
Б
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

E0
F1
 
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
 
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
LJ
VARIABLE_VALUEAdadelta/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdadelta/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEAdadelta/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEAdadelta/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE

0
1
F
0
1
2
3
4
5
6
7
	8

9

0
1
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables
 
VARIABLE_VALUE/Adadelta/batch_normalization_1/gamma/accum_gradZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adadelta/batch_normalization_1/beta/accum_gradYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/conv2d_3/kernel/accum_grad[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/conv2d_3/bias/accum_gradYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/conv2d_4/kernel/accum_grad[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/conv2d_4/bias/accum_gradYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/conv2d_5/kernel/accum_grad[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/conv2d_5/bias/accum_gradYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/dense_2/kernel/accum_grad[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/dense_2/bias/accum_gradYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/dense_3/kernel/accum_grad[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/dense_3/bias/accum_gradYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adadelta/batch_normalization_1/gamma/accum_varYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE-Adadelta/batch_normalization_1/beta/accum_varXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/conv2d_3/kernel/accum_varZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/conv2d_3/bias/accum_varXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/conv2d_4/kernel/accum_varZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/conv2d_4/bias/accum_varXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/conv2d_5/kernel/accum_varZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/conv2d_5/bias/accum_varXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/dense_2/kernel/accum_varZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdadelta/dense_2/bias/accum_varXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/dense_3/kernel/accum_varZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdadelta/dense_3/bias/accum_varXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

+serving_default_batch_normalization_1_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ *
dtype0*$
shape:џџџџџџџџџ 

StatefulPartitionedCallStatefulPartitionedCall+serving_default_batch_normalization_1_inputbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_135591
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
у
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp!Adadelta/iter/Read/ReadVariableOp"Adadelta/decay/Read/ReadVariableOp*Adadelta/learning_rate/Read/ReadVariableOp Adadelta/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpCAdadelta/batch_normalization_1/gamma/accum_grad/Read/ReadVariableOpBAdadelta/batch_normalization_1/beta/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_3/kernel/accum_grad/Read/ReadVariableOp5Adadelta/conv2d_3/bias/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_4/kernel/accum_grad/Read/ReadVariableOp5Adadelta/conv2d_4/bias/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_5/kernel/accum_grad/Read/ReadVariableOp5Adadelta/conv2d_5/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_2/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_2/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_3/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_3/bias/accum_grad/Read/ReadVariableOpBAdadelta/batch_normalization_1/gamma/accum_var/Read/ReadVariableOpAAdadelta/batch_normalization_1/beta/accum_var/Read/ReadVariableOp6Adadelta/conv2d_3/kernel/accum_var/Read/ReadVariableOp4Adadelta/conv2d_3/bias/accum_var/Read/ReadVariableOp6Adadelta/conv2d_4/kernel/accum_var/Read/ReadVariableOp4Adadelta/conv2d_4/bias/accum_var/Read/ReadVariableOp6Adadelta/conv2d_5/kernel/accum_var/Read/ReadVariableOp4Adadelta/conv2d_5/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_2/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_2/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_3/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_3/bias/accum_var/Read/ReadVariableOpConst*;
Tin4
220	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_136229
Ц
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasAdadelta/iterAdadelta/decayAdadelta/learning_rateAdadelta/rhototalcounttotal_1count_1/Adadelta/batch_normalization_1/gamma/accum_grad.Adadelta/batch_normalization_1/beta/accum_grad#Adadelta/conv2d_3/kernel/accum_grad!Adadelta/conv2d_3/bias/accum_grad#Adadelta/conv2d_4/kernel/accum_grad!Adadelta/conv2d_4/bias/accum_grad#Adadelta/conv2d_5/kernel/accum_grad!Adadelta/conv2d_5/bias/accum_grad"Adadelta/dense_2/kernel/accum_grad Adadelta/dense_2/bias/accum_grad"Adadelta/dense_3/kernel/accum_grad Adadelta/dense_3/bias/accum_grad.Adadelta/batch_normalization_1/gamma/accum_var-Adadelta/batch_normalization_1/beta/accum_var"Adadelta/conv2d_3/kernel/accum_var Adadelta/conv2d_3/bias/accum_var"Adadelta/conv2d_4/kernel/accum_var Adadelta/conv2d_4/bias/accum_var"Adadelta/conv2d_5/kernel/accum_var Adadelta/conv2d_5/bias/accum_var!Adadelta/dense_2/kernel/accum_varAdadelta/dense_2/bias/accum_var!Adadelta/dense_3/kernel/accum_varAdadelta/dense_3/bias/accum_var*:
Tin3
12/*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_136377ЎБ	
Ї
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135136

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ћ

$__inference_signature_wrapper_135591
batch_normalization_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_134935o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
Ч
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_136028

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ь

Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_134957

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ОU
П
!__inference__wrapped_model_134935
batch_normalization_1_inputH
:sequential_1_batch_normalization_1_readvariableop_resource:J
<sequential_1_batch_normalization_1_readvariableop_1_resource:Y
Ksequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:[
Msequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:N
4sequential_1_conv2d_3_conv2d_readvariableop_resource: C
5sequential_1_conv2d_3_biasadd_readvariableop_resource: N
4sequential_1_conv2d_4_conv2d_readvariableop_resource: @C
5sequential_1_conv2d_4_biasadd_readvariableop_resource:@N
4sequential_1_conv2d_5_conv2d_readvariableop_resource:@@C
5sequential_1_conv2d_5_biasadd_readvariableop_resource:@G
3sequential_1_dense_2_matmul_readvariableop_resource:
C
4sequential_1_dense_2_biasadd_readvariableop_resource:	F
3sequential_1_dense_3_matmul_readvariableop_resource:	B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identityЂBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpЂDsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ђ1sequential_1/batch_normalization_1/ReadVariableOpЂ3sequential_1/batch_normalization_1/ReadVariableOp_1Ђ,sequential_1/conv2d_3/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_3/Conv2D/ReadVariableOpЂ,sequential_1/conv2d_4/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_4/Conv2D/ReadVariableOpЂ,sequential_1/conv2d_5/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_5/Conv2D/ReadVariableOpЂ+sequential_1/dense_2/BiasAdd/ReadVariableOpЂ*sequential_1/dense_2/MatMul/ReadVariableOpЂ+sequential_1/dense_3/BiasAdd/ReadVariableOpЂ*sequential_1/dense_3/MatMul/ReadVariableOpЈ
1sequential_1/batch_normalization_1/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
3sequential_1/batch_normalization_1/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0Ъ
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ю
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0њ
3sequential_1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3batch_normalization_1_input9sequential_1/batch_normalization_1/ReadVariableOp:value:0;sequential_1/batch_normalization_1/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( Ј
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0і
sequential_1/conv2d_3/Conv2DConv2D7sequential_1/batch_normalization_1/FusedBatchNormV3:y:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides

,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0П
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  Ц
$sequential_1/max_pooling2d_3/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides
Ј
+sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ь
sequential_1/conv2d_4/Conv2DConv2D-sequential_1/max_pooling2d_3/MaxPool:output:03sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides

,sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
sequential_1/conv2d_4/BiasAddBiasAdd%sequential_1/conv2d_4/Conv2D:output:04sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@
sequential_1/conv2d_4/ReluRelu&sequential_1/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@Ц
$sequential_1/max_pooling2d_4/MaxPoolMaxPool(sequential_1/conv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
Ј
+sequential_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ь
sequential_1/conv2d_5/Conv2DConv2D-sequential_1/max_pooling2d_4/MaxPool:output:03sequential_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

,sequential_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
sequential_1/conv2d_5/BiasAddBiasAdd%sequential_1/conv2d_5/Conv2D:output:04sequential_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
sequential_1/conv2d_5/ReluRelu&sequential_1/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ц
$sequential_1/max_pooling2d_5/MaxPoolMaxPool(sequential_1/conv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   В
sequential_1/flatten_1/ReshapeReshape-sequential_1/max_pooling2d_5/MaxPool:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Е
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ж
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ{
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Д
sequential_1/dense_3/MatMulMatMul'sequential_1/dense_2/Relu:activations:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_1/dense_3/SoftmaxSoftmax%sequential_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџu
IdentityIdentity&sequential_1/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOpC^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_1/ReadVariableOp4^sequential_1/batch_normalization_1/ReadVariableOp_1-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp-^sequential_1/conv2d_4/BiasAdd/ReadVariableOp,^sequential_1/conv2d_4/Conv2D/ReadVariableOp-^sequential_1/conv2d_5/BiasAdd/ReadVariableOp,^sequential_1/conv2d_5/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 2
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_1/ReadVariableOp1sequential_1/batch_normalization_1/ReadVariableOp2j
3sequential_1/batch_normalization_1/ReadVariableOp_13sequential_1/batch_normalization_1/ReadVariableOp_12\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp,sequential_1/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_4/Conv2D/ReadVariableOp+sequential_1/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_5/BiasAdd/ReadVariableOp,sequential_1/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_5/Conv2D/ReadVariableOp+sequential_1/conv2d_5/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
	
б
6__inference_batch_normalization_1_layer_call_fn_135799

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_134988
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135917

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ѓ

ѕ
C__inference_dense_3_layer_call_and_return_conditional_losses_136068

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
аe

__inference__traced_save_136229
file_prefix:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop,
(savev2_adadelta_iter_read_readvariableop	-
)savev2_adadelta_decay_read_readvariableop5
1savev2_adadelta_learning_rate_read_readvariableop+
'savev2_adadelta_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopN
Jsavev2_adadelta_batch_normalization_1_gamma_accum_grad_read_readvariableopM
Isavev2_adadelta_batch_normalization_1_beta_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_3_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_conv2d_3_bias_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_4_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_conv2d_4_bias_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_5_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_conv2d_5_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_2_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_2_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_3_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_3_bias_accum_grad_read_readvariableopM
Isavev2_adadelta_batch_normalization_1_gamma_accum_var_read_readvariableopL
Hsavev2_adadelta_batch_normalization_1_beta_accum_var_read_readvariableopA
=savev2_adadelta_conv2d_3_kernel_accum_var_read_readvariableop?
;savev2_adadelta_conv2d_3_bias_accum_var_read_readvariableopA
=savev2_adadelta_conv2d_4_kernel_accum_var_read_readvariableop?
;savev2_adadelta_conv2d_4_bias_accum_var_read_readvariableopA
=savev2_adadelta_conv2d_5_kernel_accum_var_read_readvariableop?
;savev2_adadelta_conv2d_5_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_2_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_2_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_3_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_3_bias_accum_var_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: К
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*у
valueйBж/B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЫ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B К
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop(savev2_adadelta_iter_read_readvariableop)savev2_adadelta_decay_read_readvariableop1savev2_adadelta_learning_rate_read_readvariableop'savev2_adadelta_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopJsavev2_adadelta_batch_normalization_1_gamma_accum_grad_read_readvariableopIsavev2_adadelta_batch_normalization_1_beta_accum_grad_read_readvariableop>savev2_adadelta_conv2d_3_kernel_accum_grad_read_readvariableop<savev2_adadelta_conv2d_3_bias_accum_grad_read_readvariableop>savev2_adadelta_conv2d_4_kernel_accum_grad_read_readvariableop<savev2_adadelta_conv2d_4_bias_accum_grad_read_readvariableop>savev2_adadelta_conv2d_5_kernel_accum_grad_read_readvariableop<savev2_adadelta_conv2d_5_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_2_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_2_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_3_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_3_bias_accum_grad_read_readvariableopIsavev2_adadelta_batch_normalization_1_gamma_accum_var_read_readvariableopHsavev2_adadelta_batch_normalization_1_beta_accum_var_read_readvariableop=savev2_adadelta_conv2d_3_kernel_accum_var_read_readvariableop;savev2_adadelta_conv2d_3_bias_accum_var_read_readvariableop=savev2_adadelta_conv2d_4_kernel_accum_var_read_readvariableop;savev2_adadelta_conv2d_4_bias_accum_var_read_readvariableop=savev2_adadelta_conv2d_5_kernel_accum_var_read_readvariableop;savev2_adadelta_conv2d_5_bias_accum_var_read_readvariableop<savev2_adadelta_dense_2_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_2_bias_accum_var_read_readvariableop<savev2_adadelta_dense_3_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_3_bias_accum_var_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: ::::: : : @:@:@@:@:
::	:: : : : : : : : ::: : : @:@:@@:@:
::	:::: : : @:@:@@:@:
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
:! 

_output_shapes	
::%!!

_output_shapes
:	: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
: : &

_output_shapes
: :,'(
&
_output_shapes
: @: (

_output_shapes
:@:,)(
&
_output_shapes
:@@: *

_output_shapes
:@:&+"
 
_output_shapes
:
:!,

_output_shapes	
::%-!

_output_shapes
:	: .

_output_shapes
::/

_output_shapes
: 
Ѓ

ѕ
C__inference_dense_3_layer_call_and_return_conditional_losses_135174

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ
ѕ
-__inference_sequential_1_layer_call_fn_135657

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_135404o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Э.
ж
H__inference_sequential_1_layer_call_and_return_conditional_losses_135181

inputs*
batch_normalization_1_135060:*
batch_normalization_1_135062:*
batch_normalization_1_135064:*
batch_normalization_1_135066:)
conv2d_3_135081: 
conv2d_3_135083: )
conv2d_4_135104: @
conv2d_4_135106:@)
conv2d_5_135127:@@
conv2d_5_135129:@"
dense_2_135158:

dense_2_135160:	!
dense_3_135175:	
dense_3_135177:
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallь
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_135060batch_normalization_1_135062batch_normalization_1_135064batch_normalization_1_135066*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135059Ј
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_135081conv2d_3_135083*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135080ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135090
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_135104conv2d_4_135106*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135103ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135113
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_135127conv2d_5_135129*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135126ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135136н
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_135144
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_135158dense_2_135160*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_135157
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_135175dense_3_135177*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_135174w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
І

ї
C__inference_dense_2_layer_call_and_return_conditional_losses_136048

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ

-__inference_sequential_1_layer_call_fn_135468
batch_normalization_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_135404o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
І

ї
C__inference_dense_2_layer_call_and_return_conditional_losses_135157

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

§
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135997

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135059

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
к
Р
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_134988

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<А
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0К
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_135144

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ъ

)__inference_conv2d_4_layer_call_fn_135946

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135103w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ
 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
 
_user_specified_nameinputs
Ї
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135937

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ь

Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135843

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы
L
0__inference_max_pooling2d_4_layer_call_fn_135967

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135113h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
@:W S
/
_output_shapes
:џџџџџџџџџ
@
 
_user_specified_nameinputs

§
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135103

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ
 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
 
_user_specified_nameinputs
вП
Г
"__inference__traced_restore_136377
file_prefix:
,assignvariableop_batch_normalization_1_gamma:;
-assignvariableop_1_batch_normalization_1_beta:B
4assignvariableop_2_batch_normalization_1_moving_mean:F
8assignvariableop_3_batch_normalization_1_moving_variance:<
"assignvariableop_4_conv2d_3_kernel: .
 assignvariableop_5_conv2d_3_bias: <
"assignvariableop_6_conv2d_4_kernel: @.
 assignvariableop_7_conv2d_4_bias:@<
"assignvariableop_8_conv2d_5_kernel:@@.
 assignvariableop_9_conv2d_5_bias:@6
"assignvariableop_10_dense_2_kernel:
/
 assignvariableop_11_dense_2_bias:	5
"assignvariableop_12_dense_3_kernel:	.
 assignvariableop_13_dense_3_bias:+
!assignvariableop_14_adadelta_iter:	 ,
"assignvariableop_15_adadelta_decay: 4
*assignvariableop_16_adadelta_learning_rate: *
 assignvariableop_17_adadelta_rho: #
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: Q
Cassignvariableop_22_adadelta_batch_normalization_1_gamma_accum_grad:P
Bassignvariableop_23_adadelta_batch_normalization_1_beta_accum_grad:Q
7assignvariableop_24_adadelta_conv2d_3_kernel_accum_grad: C
5assignvariableop_25_adadelta_conv2d_3_bias_accum_grad: Q
7assignvariableop_26_adadelta_conv2d_4_kernel_accum_grad: @C
5assignvariableop_27_adadelta_conv2d_4_bias_accum_grad:@Q
7assignvariableop_28_adadelta_conv2d_5_kernel_accum_grad:@@C
5assignvariableop_29_adadelta_conv2d_5_bias_accum_grad:@J
6assignvariableop_30_adadelta_dense_2_kernel_accum_grad:
C
4assignvariableop_31_adadelta_dense_2_bias_accum_grad:	I
6assignvariableop_32_adadelta_dense_3_kernel_accum_grad:	B
4assignvariableop_33_adadelta_dense_3_bias_accum_grad:P
Bassignvariableop_34_adadelta_batch_normalization_1_gamma_accum_var:O
Aassignvariableop_35_adadelta_batch_normalization_1_beta_accum_var:P
6assignvariableop_36_adadelta_conv2d_3_kernel_accum_var: B
4assignvariableop_37_adadelta_conv2d_3_bias_accum_var: P
6assignvariableop_38_adadelta_conv2d_4_kernel_accum_var: @B
4assignvariableop_39_adadelta_conv2d_4_bias_accum_var:@P
6assignvariableop_40_adadelta_conv2d_5_kernel_accum_var:@@B
4assignvariableop_41_adadelta_conv2d_5_bias_accum_var:@I
5assignvariableop_42_adadelta_dense_2_kernel_accum_var:
B
3assignvariableop_43_adadelta_dense_2_bias_accum_var:	H
5assignvariableop_44_adadelta_dense_3_kernel_accum_var:	A
3assignvariableop_45_adadelta_dense_3_bias_accum_var:
identity_47ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Н
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*у
valueйBж/B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЮ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*в
_output_shapesП
М:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_1_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_1_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_1_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_1_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOp!assignvariableop_14_adadelta_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_adadelta_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adadelta_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_adadelta_rhoIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOpCassignvariableop_22_adadelta_batch_normalization_1_gamma_accum_gradIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_23AssignVariableOpBassignvariableop_23_adadelta_batch_normalization_1_beta_accum_gradIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_24AssignVariableOp7assignvariableop_24_adadelta_conv2d_3_kernel_accum_gradIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adadelta_conv2d_3_bias_accum_gradIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_26AssignVariableOp7assignvariableop_26_adadelta_conv2d_4_kernel_accum_gradIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adadelta_conv2d_4_bias_accum_gradIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_28AssignVariableOp7assignvariableop_28_adadelta_conv2d_5_kernel_accum_gradIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adadelta_conv2d_5_bias_accum_gradIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adadelta_dense_2_kernel_accum_gradIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adadelta_dense_2_bias_accum_gradIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adadelta_dense_3_kernel_accum_gradIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adadelta_dense_3_bias_accum_gradIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_34AssignVariableOpBassignvariableop_34_adadelta_batch_normalization_1_gamma_accum_varIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_35AssignVariableOpAassignvariableop_35_adadelta_batch_normalization_1_beta_accum_varIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adadelta_conv2d_3_kernel_accum_varIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adadelta_conv2d_3_bias_accum_varIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adadelta_conv2d_4_kernel_accum_varIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adadelta_conv2d_4_bias_accum_varIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adadelta_conv2d_5_kernel_accum_varIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adadelta_conv2d_5_bias_accum_varIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adadelta_dense_2_kernel_accum_varIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_43AssignVariableOp3assignvariableop_43_adadelta_dense_2_bias_accum_varIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adadelta_dense_3_kernel_accum_varIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_45AssignVariableOp3assignvariableop_45_adadelta_dense_3_bias_accum_varIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 У
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: А
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

§
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135957

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ
@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ
 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135972

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И
L
0__inference_max_pooling2d_5_layer_call_fn_136002

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135032
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы
L
0__inference_max_pooling2d_3_layer_call_fn_135927

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135090h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs

Р
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135897

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ф
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
exponential_avg_factor%
з#<А
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0К
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ч

(__inference_dense_2_layer_call_fn_136037

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_135157p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135008

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И
L
0__inference_max_pooling2d_3_layer_call_fn_135922

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135008
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И
L
0__inference_max_pooling2d_4_layer_call_fn_135962

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135020
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы.
ж
H__inference_sequential_1_layer_call_and_return_conditional_losses_135404

inputs*
batch_normalization_1_135365:*
batch_normalization_1_135367:*
batch_normalization_1_135369:*
batch_normalization_1_135371:)
conv2d_3_135374: 
conv2d_3_135376: )
conv2d_4_135380: @
conv2d_4_135382:@)
conv2d_5_135386:@@
conv2d_5_135388:@"
dense_2_135393:

dense_2_135395:	!
dense_3_135398:	
dense_3_135400:
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallъ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_135365batch_normalization_1_135367batch_normalization_1_135369batch_normalization_1_135371*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135316Ј
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_135374conv2d_3_135376*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135080ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135090
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_135380conv2d_4_135382*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135103ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135113
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_135386conv2d_5_135388*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135126ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135136н
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_135144
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_135393dense_2_135395*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_135157
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_135398dense_3_135400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_135174w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ћ

-__inference_sequential_1_layer_call_fn_135212
batch_normalization_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_135181o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input

g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_136012

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135032

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135090

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ш
б
6__inference_batch_normalization_1_layer_call_fn_135812

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135059w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

Р
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135316

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ф
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
exponential_avg_factor%
з#<А
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0К
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ы
L
0__inference_max_pooling2d_5_layer_call_fn_136007

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135136h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135932

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ъ

)__inference_conv2d_3_layer_call_fn_135906

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135080w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ї
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135113

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
@:W S
/
_output_shapes
:џџџџџџџџџ
@
 
_user_specified_nameinputs
ь
ѕ
-__inference_sequential_1_layer_call_fn_135624

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_135181o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ъ

)__inference_conv2d_5_layer_call_fn_135986

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135126w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
МL
Е
H__inference_sequential_1_layer_call_and_return_conditional_losses_135773

inputs;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_3_conv2d_readvariableop_resource: 6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identityЂ$batch_normalization_1/AssignNewValueЂ&batch_normalization_1/AssignNewValue_1Ђ5batch_normalization_1/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_1/ReadVariableOpЂ&batch_normalization_1/ReadVariableOp_1Ђconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOp
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0А
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Д
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0В
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
exponential_avg_factor%
з#<
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Я
conv2d_3/Conv2DConv2D*batch_normalization_1/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  Ќ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Х
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@Ќ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Х
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_1/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135879

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
У

(__inference_dense_3_layer_call_fn_136057

inputs
unknown:	
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_135174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135020

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135977

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
@:W S
/
_output_shapes
:џџџџџџџџџ
@
 
_user_specified_nameinputs

§
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135080

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ЮE
х
H__inference_sequential_1_layer_call_and_return_conditional_losses_135715

inputs;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_3_conv2d_readvariableop_resource: 6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identityЂ5batch_normalization_1/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_1/ReadVariableOpЂ&batch_normalization_1/ReadVariableOp_1Ђconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOp
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0А
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Д
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Є
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Я
conv2d_3/Conv2DConv2D*batch_normalization_1/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  Ќ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Х
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@Ќ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Х
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_1/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp6^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ц
б
6__inference_batch_normalization_1_layer_call_fn_135825

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135316w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
/
ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_135510
batch_normalization_1_input*
batch_normalization_1_135471:*
batch_normalization_1_135473:*
batch_normalization_1_135475:*
batch_normalization_1_135477:)
conv2d_3_135480: 
conv2d_3_135482: )
conv2d_4_135486: @
conv2d_4_135488:@)
conv2d_5_135492:@@
conv2d_5_135494:@"
dense_2_135499:

dense_2_135501:	!
dense_3_135504:	
dense_3_135506:
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCall
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputbatch_normalization_1_135471batch_normalization_1_135473batch_normalization_1_135475batch_normalization_1_135477*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135059Ј
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_135480conv2d_3_135482*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135080ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135090
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_135486conv2d_4_135488*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135103ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135113
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_135492conv2d_5_135494*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135126ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135136н
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_135144
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_135499dense_2_135501*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_135157
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_135504dense_3_135506*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_135174w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input

§
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135126

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
к
Р
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135861

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<А
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0К
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
б
6__inference_batch_normalization_1_layer_call_fn_135786

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_134957
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
/
ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_135552
batch_normalization_1_input*
batch_normalization_1_135513:*
batch_normalization_1_135515:*
batch_normalization_1_135517:*
batch_normalization_1_135519:)
conv2d_3_135522: 
conv2d_3_135524: )
conv2d_4_135528: @
conv2d_4_135530:@)
conv2d_5_135534:@@
conv2d_5_135536:@"
dense_2_135541:

dense_2_135543:	!
dense_3_135546:	
dense_3_135548:
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallџ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputbatch_normalization_1_135513batch_normalization_1_135515batch_normalization_1_135517batch_normalization_1_135519*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135316Ј
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_135522conv2d_3_135524*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135080ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135090
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_135528conv2d_4_135530*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135103ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135113
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_135534conv2d_5_135536*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135126ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_135136н
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_135144
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_135541dense_2_135543*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_135157
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_135546dense_3_135548*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_135174w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџ : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
Ї
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_136017

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Б
F
*__inference_flatten_1_layer_call_fn_136022

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_135144a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*к
serving_defaultЦ
k
batch_normalization_1_inputL
-serving_default_batch_normalization_1_input:0џџџџџџџџџ ;
dense_30
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:вз
Ќ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Г_default_save_signature"
_tf_keras_sequential

axis
	gamma
beta
moving_mean
moving_variance
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
т

kernel
bias
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
Ь
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
т

(kernel
)bias
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
Ь
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"
_tf_keras_layer
т

4kernel
5bias
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
О__call__
+П&call_and_return_all_conditional_losses"
_tf_keras_layer
Ь
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
Ь
#@_self_saveable_object_factories
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"
_tf_keras_layer
т

Ekernel
Fbias
#G_self_saveable_object_factories
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"
_tf_keras_layer
т

Lkernel
Mbias
#N_self_saveable_object_factories
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"
_tf_keras_layer

Siter
	Tdecay
Ulearning_rate
Vrho
accum_grad
accum_grad
accum_grad
accum_grad(
accum_grad)
accum_grad4
accum_grad5
accum_grad E
accum_gradЁF
accum_gradЂL
accum_gradЃM
accum_gradЄ	accum_varЅ	accum_varІ	accum_varЇ	accum_varЈ(	accum_varЉ)	accum_varЊ4	accum_varЋ5	accum_varЌE	accum_var­F	accum_varЎL	accum_varЏM	accum_varА"
	optimizer
-
Шserving_default"
signature_map
 "
trackable_dict_wrapper

0
1
2
3
4
5
(6
)7
48
59
E10
F11
L12
M13"
trackable_list_wrapper
v
0
1
2
3
(4
)5
46
57
E8
F9
L10
M11"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
Б__call__
Г_default_save_signature
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_1/gamma
(:&2batch_normalization_1/beta
1:/ (2!batch_normalization_1/moving_mean
5:3 (2%batch_normalization_1/moving_variance
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_3/kernel
: 2conv2d_3/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
$	variables
%trainable_variables
&regularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_4/kernel
:@2conv2d_4/bias
 "
trackable_dict_wrapper
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
А
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
+	variables
,trainable_variables
-regularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
0	variables
1trainable_variables
2regularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_5/kernel
:@2conv2d_5/bias
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
А
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
7	variables
8trainable_variables
9regularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
<	variables
=trainable_variables
>regularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Д
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_2/kernel
:2dense_2/bias
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
!:	2dense_3/kernel
:2dense_3/bias
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adadelta/iter
: (2Adadelta/decay
 : (2Adadelta/learning_rate
: (2Adadelta/rho
.
0
1"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
;:92/Adadelta/batch_normalization_1/gamma/accum_grad
::82.Adadelta/batch_normalization_1/beta/accum_grad
;:9 2#Adadelta/conv2d_3/kernel/accum_grad
-:+ 2!Adadelta/conv2d_3/bias/accum_grad
;:9 @2#Adadelta/conv2d_4/kernel/accum_grad
-:+@2!Adadelta/conv2d_4/bias/accum_grad
;:9@@2#Adadelta/conv2d_5/kernel/accum_grad
-:+@2!Adadelta/conv2d_5/bias/accum_grad
4:2
2"Adadelta/dense_2/kernel/accum_grad
-:+2 Adadelta/dense_2/bias/accum_grad
3:1	2"Adadelta/dense_3/kernel/accum_grad
,:*2 Adadelta/dense_3/bias/accum_grad
::82.Adadelta/batch_normalization_1/gamma/accum_var
9:72-Adadelta/batch_normalization_1/beta/accum_var
::8 2"Adadelta/conv2d_3/kernel/accum_var
,:* 2 Adadelta/conv2d_3/bias/accum_var
::8 @2"Adadelta/conv2d_4/kernel/accum_var
,:*@2 Adadelta/conv2d_4/bias/accum_var
::8@@2"Adadelta/conv2d_5/kernel/accum_var
,:*@2 Adadelta/conv2d_5/bias/accum_var
3:1
2!Adadelta/dense_2/kernel/accum_var
,:*2Adadelta/dense_2/bias/accum_var
2:0	2!Adadelta/dense_3/kernel/accum_var
+:)2Adadelta/dense_3/bias/accum_var
2џ
-__inference_sequential_1_layer_call_fn_135212
-__inference_sequential_1_layer_call_fn_135624
-__inference_sequential_1_layer_call_fn_135657
-__inference_sequential_1_layer_call_fn_135468Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_135715
H__inference_sequential_1_layer_call_and_return_conditional_losses_135773
H__inference_sequential_1_layer_call_and_return_conditional_losses_135510
H__inference_sequential_1_layer_call_and_return_conditional_losses_135552Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
рBн
!__inference__wrapped_model_134935batch_normalization_1_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
6__inference_batch_normalization_1_layer_call_fn_135786
6__inference_batch_normalization_1_layer_call_fn_135799
6__inference_batch_normalization_1_layer_call_fn_135812
6__inference_batch_normalization_1_layer_call_fn_135825Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135843
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135861
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135879
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135897Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_conv2d_3_layer_call_fn_135906Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135917Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_3_layer_call_fn_135922
0__inference_max_pooling2d_3_layer_call_fn_135927Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135932
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135937Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_4_layer_call_fn_135946Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135957Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_4_layer_call_fn_135962
0__inference_max_pooling2d_4_layer_call_fn_135967Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135972
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135977Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_5_layer_call_fn_135986Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135997Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_5_layer_call_fn_136002
0__inference_max_pooling2d_5_layer_call_fn_136007Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Т2П
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_136012
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_136017Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_flatten_1_layer_call_fn_136022Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_flatten_1_layer_call_and_return_conditional_losses_136028Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_2_layer_call_fn_136037Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_2_layer_call_and_return_conditional_losses_136048Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_3_layer_call_fn_136057Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_3_layer_call_and_return_conditional_losses_136068Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
пBм
$__inference_signature_wrapper_135591batch_normalization_1_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 З
!__inference__wrapped_model_134935()45EFLMLЂI
BЂ?
=:
batch_normalization_1_inputџџџџџџџџџ 
Њ "1Њ.
,
dense_3!
dense_3џџџџџџџџџь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135843MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135861MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135879r;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p 
Њ "-Ђ*
# 
0џџџџџџџџџ 
 Ч
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_135897r;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p
Њ "-Ђ*
# 
0џџџџџџџџџ 
 Ф
6__inference_batch_normalization_1_layer_call_fn_135786MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџФ
6__inference_batch_normalization_1_layer_call_fn_135799MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
6__inference_batch_normalization_1_layer_call_fn_135812e;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p 
Њ " џџџџџџџџџ 
6__inference_batch_normalization_1_layer_call_fn_135825e;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p
Њ " џџџџџџџџџ Д
D__inference_conv2d_3_layer_call_and_return_conditional_losses_135917l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 
)__inference_conv2d_3_layer_call_fn_135906_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ " џџџџџџџџџ  Д
D__inference_conv2d_4_layer_call_and_return_conditional_losses_135957l()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
 
Њ "-Ђ*
# 
0џџџџџџџџџ
@
 
)__inference_conv2d_4_layer_call_fn_135946_()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
 
Њ " џџџџџџџџџ
@Д
D__inference_conv2d_5_layer_call_and_return_conditional_losses_135997l457Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_conv2d_5_layer_call_fn_135986_457Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@Ѕ
C__inference_dense_2_layer_call_and_return_conditional_losses_136048^EF0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_dense_2_layer_call_fn_136037QEF0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЄ
C__inference_dense_3_layer_call_and_return_conditional_losses_136068]LM0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 |
(__inference_dense_3_layer_call_fn_136057PLM0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЊ
E__inference_flatten_1_layer_call_and_return_conditional_losses_136028a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "&Ђ#

0џџџџџџџџџ
 
*__inference_flatten_1_layer_call_fn_136022T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "џџџџџџџџџю
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135932RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_135937h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ "-Ђ*
# 
0џџџџџџџџџ
 
 Ц
0__inference_max_pooling2d_3_layer_call_fn_135922RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_3_layer_call_fn_135927[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ " џџџџџџџџџ
 ю
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135972RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_135977h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 Ц
0__inference_max_pooling2d_4_layer_call_fn_135962RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_4_layer_call_fn_135967[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
@
Њ " џџџџџџџџџ@ю
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_136012RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_136017h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 Ц
0__inference_max_pooling2d_5_layer_call_fn_136002RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
0__inference_max_pooling2d_5_layer_call_fn_136007[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@к
H__inference_sequential_1_layer_call_and_return_conditional_losses_135510()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 к
H__inference_sequential_1_layer_call_and_return_conditional_losses_135552()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ф
H__inference_sequential_1_layer_call_and_return_conditional_losses_135715x()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ф
H__inference_sequential_1_layer_call_and_return_conditional_losses_135773x()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 В
-__inference_sequential_1_layer_call_fn_135212()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p 

 
Њ "џџџџџџџџџВ
-__inference_sequential_1_layer_call_fn_135468()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_135624k()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_135657k()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p

 
Њ "џџџџџџџџџй
$__inference_signature_wrapper_135591А()45EFLMkЂh
Ђ 
aЊ^
\
batch_normalization_1_input=:
batch_normalization_1_inputџџџџџџџџџ "1Њ.
,
dense_3!
dense_3џџџџџџџџџ