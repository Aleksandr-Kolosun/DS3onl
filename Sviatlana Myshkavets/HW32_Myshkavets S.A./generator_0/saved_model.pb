╛е 
СЇ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
√
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
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
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
-
Tanh
x"T
y"T"
Ttype:

2
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02unknown8г░
Ф
Adam/conv2d_transpose_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/v
Н
2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/v*
_output_shapes
:*
dtype0
д
 Adam/conv2d_transpose_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_4/kernel/v
Э
4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/v*&
_output_shapes
:@*
dtype0
Ъ
!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/v
У
5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/v
Х
6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_transpose_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_3/bias/v
Н
2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/v*
_output_shapes
:@*
dtype0
е
 Adam/conv2d_transpose_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*1
shared_name" Adam/conv2d_transpose_3/kernel/v
Ю
4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/v*'
_output_shapes
:@А*
dtype0
Ы
!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_6/beta/v
Ф
5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_6/gamma/v
Ц
6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes	
:А*
dtype0
Х
Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/conv2d_transpose_2/bias/v
О
2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes	
:А*
dtype0
ж
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*1
shared_name" Adam/conv2d_transpose_2/kernel/v
Я
4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*(
_output_shapes
:АА*
dtype0
Ы
!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_5/beta/v
Ф
5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_5/gamma/v
Ц
6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes	
:А*
dtype0
Х
Adam/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/conv2d_transpose_1/bias/v
О
2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/v*
_output_shapes	
:А*
dtype0
ж
 Adam/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*1
shared_name" Adam/conv2d_transpose_1/kernel/v
Я
4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*(
_output_shapes
:АА*
dtype0
Ы
!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_4/beta/v
Ф
5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_4/gamma/v
Ц
6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes	
:А*
dtype0
С
Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_nameAdam/conv2d_transpose/bias/v
К
0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes	
:А*
dtype0
в
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*/
shared_name Adam/conv2d_transpose/kernel/v
Ы
2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*(
_output_shapes
:АА*
dtype0

Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*$
shared_nameAdam/dense_3/bias/v
x
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes	
:А@*
dtype0
З
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dА@*&
shared_nameAdam/dense_3/kernel/v
А
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	dА@*
dtype0
Ф
Adam/conv2d_transpose_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/m
Н
2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/m*
_output_shapes
:*
dtype0
д
 Adam/conv2d_transpose_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_4/kernel/m
Э
4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/m*&
_output_shapes
:@*
dtype0
Ъ
!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/m
У
5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/m
Х
6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes
:@*
dtype0
Ф
Adam/conv2d_transpose_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_3/bias/m
Н
2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/m*
_output_shapes
:@*
dtype0
е
 Adam/conv2d_transpose_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*1
shared_name" Adam/conv2d_transpose_3/kernel/m
Ю
4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/m*'
_output_shapes
:@А*
dtype0
Ы
!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_6/beta/m
Ф
5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_6/gamma/m
Ц
6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes	
:А*
dtype0
Х
Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/conv2d_transpose_2/bias/m
О
2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes	
:А*
dtype0
ж
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*1
shared_name" Adam/conv2d_transpose_2/kernel/m
Я
4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*(
_output_shapes
:АА*
dtype0
Ы
!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_5/beta/m
Ф
5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_5/gamma/m
Ц
6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes	
:А*
dtype0
Х
Adam/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/conv2d_transpose_1/bias/m
О
2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/m*
_output_shapes	
:А*
dtype0
ж
 Adam/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*1
shared_name" Adam/conv2d_transpose_1/kernel/m
Я
4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*(
_output_shapes
:АА*
dtype0
Ы
!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!Adam/batch_normalization_4/beta/m
Ф
5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_4/gamma/m
Ц
6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes	
:А*
dtype0
С
Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_nameAdam/conv2d_transpose/bias/m
К
0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes	
:А*
dtype0
в
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*/
shared_name Adam/conv2d_transpose/kernel/m
Ы
2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*(
_output_shapes
:АА*
dtype0

Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*$
shared_nameAdam/dense_3/bias/m
x
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes	
:А@*
dtype0
З
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dА@*&
shared_nameAdam/dense_3/kernel/m
А
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	dА@*
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
Ж
conv2d_transpose_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_4/bias

+conv2d_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/bias*
_output_shapes
:*
dtype0
Ц
conv2d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameconv2d_transpose_4/kernel
П
-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*&
_output_shapes
:@*
dtype0
в
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_7/moving_variance
Ы
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:@*
dtype0
Ъ
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_7/moving_mean
У
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:@*
dtype0
М
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_7/beta
Е
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:@*
dtype0
О
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_7/gamma
З
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:@*
dtype0
Ж
conv2d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_3/bias

+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes
:@*
dtype0
Ч
conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А**
shared_nameconv2d_transpose_3/kernel
Р
-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*'
_output_shapes
:@А*
dtype0
г
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%batch_normalization_6/moving_variance
Ь
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:А*
dtype0
Ы
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!batch_normalization_6/moving_mean
Ф
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:А*
dtype0
Н
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namebatch_normalization_6/beta
Ж
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:А*
dtype0
П
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_6/gamma
И
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:А*
dtype0
З
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameconv2d_transpose_2/bias
А
+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes	
:А*
dtype0
Ш
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameconv2d_transpose_2/kernel
С
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*(
_output_shapes
:АА*
dtype0
г
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%batch_normalization_5/moving_variance
Ь
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:А*
dtype0
Ы
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!batch_normalization_5/moving_mean
Ф
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:А*
dtype0
Н
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namebatch_normalization_5/beta
Ж
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:А*
dtype0
П
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_5/gamma
И
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:А*
dtype0
З
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameconv2d_transpose_1/bias
А
+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes	
:А*
dtype0
Ш
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameconv2d_transpose_1/kernel
С
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*(
_output_shapes
:АА*
dtype0
г
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%batch_normalization_4/moving_variance
Ь
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:А*
dtype0
Ы
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!batch_normalization_4/moving_mean
Ф
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:А*
dtype0
Н
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namebatch_normalization_4/beta
Ж
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:А*
dtype0
П
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_4/gamma
И
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:А*
dtype0
Г
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameconv2d_transpose/bias
|
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:А*
dtype0
Ф
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameconv2d_transpose/kernel
Н
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*(
_output_shapes
:АА*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:А@*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dА@*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	dА@*
dtype0
z
serving_default_input_2Placeholder*'
_output_shapes
:         d*
dtype0*
shape:         d
Э	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2dense_3/kerneldense_3/biasconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_transpose_3/kernelconv2d_transpose_3/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_4/kernelconv2d_transpose_4/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference_signature_wrapper_6717

NoOpNoOp
ой
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ши
value▌иB┘и B╤и
А
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
* 
°
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
layer-8
layer_with_weights-5
layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer-16
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
┌
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27*
Ъ
#0
$1
%2
&3
'4
(5
+6
,7
-8
.9
110
211
312
413
714
815
916
:17
=18
>19*
* 
░
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_3* 
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
* 
╘
Liter

Mbeta_1

Nbeta_2
	Odecay
Plearning_rate#m╥$m╙%m╘&m╒'m╓(m╫+m╪,m┘-m┌.m█1m▄2m▌3m▐4m▀7mр8mс9mт:mу=mф>mх#vц$vч%vш&vщ'vъ(vы+vь,vэ-vю.vя1vЁ2vё3vЄ4vє7vЇ8vї9vЎ:vў=v°>v∙*

Qserving_default* 
ж
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

#kernel
$bias*
О
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
О
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
╚
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

%kernel
&bias
 j_jit_compiled_convolution_op*
╒
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	'gamma
(beta
)moving_mean
*moving_variance*
О
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses* 
╚
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

+kernel
,bias
 ~_jit_compiled_convolution_op*
█
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses
	Еaxis
	-gamma
.beta
/moving_mean
0moving_variance*
Ф
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses* 
╧
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses

1kernel
2bias
!Т_jit_compiled_convolution_op*
▄
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
	Щaxis
	3gamma
4beta
5moving_mean
6moving_variance*
Ф
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses* 
╧
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

7kernel
8bias
!ж_jit_compiled_convolution_op*
▄
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses
	нaxis
	9gamma
:beta
;moving_mean
<moving_variance*
Ф
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses* 
╧
┤	variables
╡trainable_variables
╢regularization_losses
╖	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses

=kernel
>bias
!║_jit_compiled_convolution_op*
Ф
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api
┐__call__
+└&call_and_return_all_conditional_losses* 
┌
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27*
Ъ
#0
$1
%2
&3
'4
(5
+6
,7
-8
.9
110
211
312
413
714
815
916
:17
=18
>19*
* 
Ш
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
:
╞trace_0
╟trace_1
╚trace_2
╔trace_3* 
:
╩trace_0
╦trace_1
╠trace_2
═trace_3* 
NH
VARIABLE_VALUEdense_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_3/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_transpose/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEconv2d_transpose/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_4/gamma&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEbatch_normalization_4/beta&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!batch_normalization_4/moving_mean&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%batch_normalization_4/moving_variance&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_transpose_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_5/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_5/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_5/moving_mean'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_5/moving_variance'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_2/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_2/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_6/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_6/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_6/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_6/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_3/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_3/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_7/gamma'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_7/beta'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_7/moving_mean'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_7/moving_variance'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_4/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_4/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
<
)0
*1
/2
03
54
65
;6
<7*

0
1*

╬0*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

#0
$1*

#0
$1*
* 
Ш
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

╘trace_0* 

╒trace_0* 
* 
* 
* 
Ц
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

█trace_0* 

▄trace_0* 
* 
* 
* 
Ц
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

тtrace_0* 

уtrace_0* 

%0
&1*

%0
&1*
* 
Ш
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

щtrace_0* 

ъtrace_0* 
* 
 
'0
(1
)2
*3*

'0
(1*
* 
Ш
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

Ёtrace_0
ёtrace_1* 

Єtrace_0
єtrace_1* 
* 
* 
* 
* 
Ц
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses* 

∙trace_0* 

·trace_0* 

+0
,1*

+0
,1*
* 
Ш
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

Аtrace_0* 

Бtrace_0* 
* 
 
-0
.1
/2
03*

-0
.1*
* 
Э
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses*

Зtrace_0
Иtrace_1* 

Йtrace_0
Кtrace_1* 
* 
* 
* 
* 
Ь
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses* 

Рtrace_0* 

Сtrace_0* 

10
21*

10
21*
* 
Ю
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses*

Чtrace_0* 

Шtrace_0* 
* 
 
30
41
52
63*

30
41*
* 
Ю
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

Юtrace_0
Яtrace_1* 

аtrace_0
бtrace_1* 
* 
* 
* 
* 
Ь
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses* 

зtrace_0* 

иtrace_0* 

70
81*

70
81*
* 
Ю
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses*

оtrace_0* 

пtrace_0* 
* 
 
90
:1
;2
<3*

90
:1*
* 
Ю
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses*

╡trace_0
╢trace_1* 

╖trace_0
╕trace_1* 
* 
* 
* 
* 
Ь
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses* 

╛trace_0* 

┐trace_0* 

=0
>1*

=0
>1*
* 
Ю
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
┤	variables
╡trainable_variables
╢regularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses*

┼trace_0* 

╞trace_0* 
* 
* 
* 
* 
Ь
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses* 

╠trace_0* 

═trace_0* 
<
)0
*1
/2
03
54
65
;6
<7*
В
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16*
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
<
╬	variables
╧	keras_api

╨total

╤count*
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

)0
*1*
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

/0
01*
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

50
61*
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

;0
<1*
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

╨0
╤1*

╬	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_3/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/conv2d_transpose/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/batch_normalization_4/beta/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_5/beta/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_6/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_3/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_7/beta/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_4/bias/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_3/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/conv2d_transpose/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/batch_normalization_4/beta/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_5/beta/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_6/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_3/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE!Adam/batch_normalization_7/beta/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/conv2d_transpose_4/bias/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▄
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp-conv2d_transpose_3/kernel/Read/ReadVariableOp+conv2d_transpose_3/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp-conv2d_transpose_4/kernel/Read/ReadVariableOp+conv2d_transpose_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOp0Adam/conv2d_transpose/bias/m/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_4/beta/m/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOp0Adam/conv2d_transpose/bias/v/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_4/beta/v/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *&
f!R
__inference__traced_save_8473
√
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_transpose_3/kernelconv2d_transpose_3/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_4/kernelconv2d_transpose_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/m Adam/conv2d_transpose_3/kernel/mAdam/conv2d_transpose_3/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/m Adam/conv2d_transpose_4/kernel/mAdam/conv2d_transpose_4/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/v Adam/conv2d_transpose_3/kernel/vAdam/conv2d_transpose_3/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/v Adam/conv2d_transpose_4/kernel/vAdam/conv2d_transpose_4/bias/v*W
TinP
N2L*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_restore_8708ЦЮ
╨
Г
&__inference_model_1_layer_call_fn_6526
input_2
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╜
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_6406w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_2
ї
c
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_7945

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         Аh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╫
З
+__inference_sequential_1_layer_call_fn_7315

inputs
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5884w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╞
ж
1__inference_conv2d_transpose_4_layer_call_fn_8182

inputs!
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5483Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╩
H
,__inference_leaky_re_lu_7_layer_call_fn_7826

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_5555i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▐
√
A__inference_model_1_layer_call_and_return_conditional_losses_6406

inputs$
sequential_1_6348:	dА@ 
sequential_1_6350:	А@-
sequential_1_6352:АА 
sequential_1_6354:	А 
sequential_1_6356:	А 
sequential_1_6358:	А 
sequential_1_6360:	А 
sequential_1_6362:	А-
sequential_1_6364:АА 
sequential_1_6366:	А 
sequential_1_6368:	А 
sequential_1_6370:	А 
sequential_1_6372:	А 
sequential_1_6374:	А-
sequential_1_6376:АА 
sequential_1_6378:	А 
sequential_1_6380:	А 
sequential_1_6382:	А 
sequential_1_6384:	А 
sequential_1_6386:	А,
sequential_1_6388:@А
sequential_1_6390:@
sequential_1_6392:@
sequential_1_6394:@
sequential_1_6396:@
sequential_1_6398:@+
sequential_1_6400:@
sequential_1_6402:
identityИв$sequential_1/StatefulPartitionedCallЯ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_6348sequential_1_6350sequential_1_6352sequential_1_6354sequential_1_6356sequential_1_6358sequential_1_6360sequential_1_6362sequential_1_6364sequential_1_6366sequential_1_6368sequential_1_6370sequential_1_6372sequential_1_6374sequential_1_6376sequential_1_6378sequential_1_6380sequential_1_6382sequential_1_6384sequential_1_6386sequential_1_6388sequential_1_6390sequential_1_6392sequential_1_6394sequential_1_6396sequential_1_6398sequential_1_6400sequential_1_6402*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5884Д
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@m
NoOpNoOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ш	
╙
4__inference_batch_normalization_5_layer_call_fn_7886

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5188К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ї
c
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_5555

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         Аh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▐ 
Ъ
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5051

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ф
┬
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5327

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ф
┬
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5219

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╚
I
-__inference_leaky_re_lu_10_layer_call_fn_8168

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_5618h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@@:W S
/
_output_shapes
:         @@@
 
_user_specified_nameinputs
р 
Ь
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5267

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╦	
Ї
A__inference_dense_3_layer_call_and_return_conditional_losses_7688

inputs1
matmul_readvariableop_resource:	dА@.
biasadd_readvariableop_resource:	А@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А@*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ц	
╙
4__inference_batch_normalization_4_layer_call_fn_7785

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5111К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
иU
▀
F__inference_sequential_1_layer_call_and_return_conditional_losses_6081
dense_3_input
dense_3_6007:	dА@
dense_3_6009:	А@1
conv2d_transpose_6014:АА$
conv2d_transpose_6016:	А)
batch_normalization_4_6019:	А)
batch_normalization_4_6021:	А)
batch_normalization_4_6023:	А)
batch_normalization_4_6025:	А3
conv2d_transpose_1_6029:АА&
conv2d_transpose_1_6031:	А)
batch_normalization_5_6034:	А)
batch_normalization_5_6036:	А)
batch_normalization_5_6038:	А)
batch_normalization_5_6040:	А3
conv2d_transpose_2_6044:АА&
conv2d_transpose_2_6046:	А)
batch_normalization_6_6049:	А)
batch_normalization_6_6051:	А)
batch_normalization_6_6053:	А)
batch_normalization_6_6055:	А2
conv2d_transpose_3_6059:@А%
conv2d_transpose_3_6061:@(
batch_normalization_7_6064:@(
batch_normalization_7_6066:@(
batch_normalization_7_6068:@(
batch_normalization_7_6070:@1
conv2d_transpose_4_6074:@%
conv2d_transpose_4_6076:
identityИв-batch_normalization_4/StatefulPartitionedCallв-batch_normalization_5/StatefulPartitionedCallв-batch_normalization_6/StatefulPartitionedCallв-batch_normalization_7/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallв*conv2d_transpose_2/StatefulPartitionedCallв*conv2d_transpose_3/StatefulPartitionedCallв*conv2d_transpose_4/StatefulPartitionedCallвdense_3/StatefulPartitionedCallё
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_6007dense_3_6009*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_5507ц
leaky_re_lu_6/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5518р
reshape/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_5534░
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_6014conv2d_transpose_6016*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5051С
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_4_6019batch_normalization_4_6021batch_normalization_4_6023batch_normalization_4_6025*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5080№
leaky_re_lu_7/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_5555╛
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0conv2d_transpose_1_6029conv2d_transpose_1_6031*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5159У
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_5_6034batch_normalization_5_6036batch_normalization_5_6038batch_normalization_5_6040*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5188№
leaky_re_lu_8/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_5576╛
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_2_6044conv2d_transpose_2_6046*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5267У
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_6_6049batch_normalization_6_6051batch_normalization_6_6053batch_normalization_6_6055*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5296№
leaky_re_lu_9/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_5597╜
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_transpose_3_6059conv2d_transpose_3_6061*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5375Т
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_7_6064batch_normalization_7_6066batch_normalization_7_6068batch_normalization_7_6070*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5404¤
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_5618╛
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_transpose_4_6074conv2d_transpose_4_6076*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5483Є
activation/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_5630z
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@З
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:V R
'
_output_shapes
:         d
'
_user_specified_namedense_3_input
ЫУ
Ш$
__inference__traced_save_8473
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop6
2savev2_conv2d_transpose_1_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_2_kernel_read_readvariableop6
2savev2_conv2d_transpose_2_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_3_kernel_read_readvariableop6
2savev2_conv2d_transpose_3_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_4_kernel_read_readvariableop6
2savev2_conv2d_transpose_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_m_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop?
;savev2_adam_conv2d_transpose_3_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_3_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop?
;savev2_adam_conv2d_transpose_4_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_4_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_v_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop?
;savev2_adam_conv2d_transpose_3_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_3_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop?
;savev2_adam_conv2d_transpose_4_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_4_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Е"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*о!
valueд!Bб!LB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHИ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*н
valueгBаLB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¤"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop2savev2_conv2d_transpose_2_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop4savev2_conv2d_transpose_3_kernel_read_readvariableop2savev2_conv2d_transpose_3_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop4savev2_conv2d_transpose_4_kernel_read_readvariableop2savev2_conv2d_transpose_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop7savev2_adam_conv2d_transpose_bias_m_read_readvariableop=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop<savev2_adam_batch_normalization_4_beta_m_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop7savev2_adam_conv2d_transpose_bias_v_read_readvariableop=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop<savev2_adam_batch_normalization_4_beta_v_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*╗
_input_shapesй
ж: :	dА@:А@:АА:А:А:А:А:А:АА:А:А:А:А:А:АА:А:А:А:А:А:@А:@:@:@:@:@:@:: : : : : : : :	dА@:А@:АА:А:А:А:АА:А:А:А:АА:А:А:А:@А:@:@:@:@::	dА@:А@:АА:А:А:А:АА:А:А:А:АА:А:А:А:@А:@:@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	dА@:!

_output_shapes	
:А@:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:-)
'
_output_shapes
:@А: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :%$!

_output_shapes
:	dА@:!%

_output_shapes	
:А@:.&*
(
_output_shapes
:АА:!'

_output_shapes	
:А:!(

_output_shapes	
:А:!)

_output_shapes	
:А:.**
(
_output_shapes
:АА:!+

_output_shapes	
:А:!,

_output_shapes	
:А:!-

_output_shapes	
:А:..*
(
_output_shapes
:АА:!/

_output_shapes	
:А:!0

_output_shapes	
:А:!1

_output_shapes	
:А:-2)
'
_output_shapes
:@А: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@: 7

_output_shapes
::%8!

_output_shapes
:	dА@:!9

_output_shapes	
:А@:.:*
(
_output_shapes
:АА:!;

_output_shapes	
:А:!<

_output_shapes	
:А:!=

_output_shapes	
:А:.>*
(
_output_shapes
:АА:!?

_output_shapes	
:А:!@

_output_shapes	
:А:!A

_output_shapes	
:А:.B*
(
_output_shapes
:АА:!C

_output_shapes	
:А:!D

_output_shapes	
:А:!E

_output_shapes	
:А:-F)
'
_output_shapes
:@А: G

_output_shapes
:@: H

_output_shapes
:@: I

_output_shapes
:@:,J(
&
_output_shapes
:@: K

_output_shapes
::L

_output_shapes
: 
Д
╛
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5435

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╪ 
Ъ
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5375

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╒
c
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_7698

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:         А@`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А@:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
▀
З
+__inference_sequential_1_layer_call_fn_7254

inputs
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5633w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ф
┬
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7935

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ш	
╙
4__inference_batch_normalization_4_layer_call_fn_7772

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5080К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ЛU
╪
F__inference_sequential_1_layer_call_and_return_conditional_losses_5884

inputs
dense_3_5810:	dА@
dense_3_5812:	А@1
conv2d_transpose_5817:АА$
conv2d_transpose_5819:	А)
batch_normalization_4_5822:	А)
batch_normalization_4_5824:	А)
batch_normalization_4_5826:	А)
batch_normalization_4_5828:	А3
conv2d_transpose_1_5832:АА&
conv2d_transpose_1_5834:	А)
batch_normalization_5_5837:	А)
batch_normalization_5_5839:	А)
batch_normalization_5_5841:	А)
batch_normalization_5_5843:	А3
conv2d_transpose_2_5847:АА&
conv2d_transpose_2_5849:	А)
batch_normalization_6_5852:	А)
batch_normalization_6_5854:	А)
batch_normalization_6_5856:	А)
batch_normalization_6_5858:	А2
conv2d_transpose_3_5862:@А%
conv2d_transpose_3_5864:@(
batch_normalization_7_5867:@(
batch_normalization_7_5869:@(
batch_normalization_7_5871:@(
batch_normalization_7_5873:@1
conv2d_transpose_4_5877:@%
conv2d_transpose_4_5879:
identityИв-batch_normalization_4/StatefulPartitionedCallв-batch_normalization_5/StatefulPartitionedCallв-batch_normalization_6/StatefulPartitionedCallв-batch_normalization_7/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallв*conv2d_transpose_2/StatefulPartitionedCallв*conv2d_transpose_3/StatefulPartitionedCallв*conv2d_transpose_4/StatefulPartitionedCallвdense_3/StatefulPartitionedCallъ
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_5810dense_3_5812*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_5507ц
leaky_re_lu_6/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5518р
reshape/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_5534░
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_5817conv2d_transpose_5819*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5051П
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_4_5822batch_normalization_4_5824batch_normalization_4_5826batch_normalization_4_5828*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5111№
leaky_re_lu_7/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_5555╛
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0conv2d_transpose_1_5832conv2d_transpose_1_5834*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5159С
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_5_5837batch_normalization_5_5839batch_normalization_5_5841batch_normalization_5_5843*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5219№
leaky_re_lu_8/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_5576╛
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_2_5847conv2d_transpose_2_5849*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5267С
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_6_5852batch_normalization_6_5854batch_normalization_6_5856batch_normalization_6_5858*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5327№
leaky_re_lu_9/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_5597╜
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_transpose_3_5862conv2d_transpose_3_5864*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5375Р
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_7_5867batch_normalization_7_5869batch_normalization_7_5871batch_normalization_7_5873*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5435¤
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_5618╛
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_transpose_4_5877conv2d_transpose_4_5879*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5483Є
activation/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_5630z
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@З
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ц	
╙
4__inference_batch_normalization_6_layer_call_fn_8013

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5327К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
└
E
)__inference_activation_layer_call_fn_8220

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_5630h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
┌
Ю
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7803

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ї
c
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_5597

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:           Аh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:           А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Є
d
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_5618

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @@@g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         @@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@@:W S
/
_output_shapes
:         @@@
 
_user_specified_nameinputs
▐
`
D__inference_activation_layer_call_and_return_conditional_losses_5630

inputs
identityN
TanhTanhinputs*
T0*/
_output_shapes
:         @@X
IdentityIdentityTanh:y:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ї
c
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_5576

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         Аh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ч¤
╣
F__inference_sequential_1_layer_call_and_return_conditional_losses_7669

inputs9
&dense_3_matmul_readvariableop_resource:	dА@6
'dense_3_biasadd_readvariableop_resource:	А@U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:АА?
0conv2d_transpose_biasadd_readvariableop_resource:	А<
-batch_normalization_4_readvariableop_resource:	А>
/batch_normalization_4_readvariableop_1_resource:	АM
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	АW
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:ААA
2conv2d_transpose_1_biasadd_readvariableop_resource:	А<
-batch_normalization_5_readvariableop_resource:	А>
/batch_normalization_5_readvariableop_1_resource:	АM
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	АW
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:ААA
2conv2d_transpose_2_biasadd_readvariableop_resource:	А<
-batch_normalization_6_readvariableop_resource:	А>
/batch_normalization_6_readvariableop_1_resource:	АM
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	АV
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@А@
2conv2d_transpose_3_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@U
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@@
2conv2d_transpose_4_biasadd_readvariableop_resource:
identityИв$batch_normalization_4/AssignNewValueв&batch_normalization_4/AssignNewValue_1в5batch_normalization_4/FusedBatchNormV3/ReadVariableOpв7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_4/ReadVariableOpв&batch_normalization_4/ReadVariableOp_1в$batch_normalization_5/AssignNewValueв&batch_normalization_5/AssignNewValue_1в5batch_normalization_5/FusedBatchNormV3/ReadVariableOpв7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_5/ReadVariableOpв&batch_normalization_5/ReadVariableOp_1в$batch_normalization_6/AssignNewValueв&batch_normalization_6/AssignNewValue_1в5batch_normalization_6/FusedBatchNormV3/ReadVariableOpв7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_6/ReadVariableOpв&batch_normalization_6/ReadVariableOp_1в$batch_normalization_7/AssignNewValueв&batch_normalization_7/AssignNewValue_1в5batch_normalization_7/FusedBatchNormV3/ReadVariableOpв7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_7/ReadVariableOpв&batch_normalization_7/ReadVariableOp_1в'conv2d_transpose/BiasAdd/ReadVariableOpв0conv2d_transpose/conv2d_transpose/ReadVariableOpв)conv2d_transpose_1/BiasAdd/ReadVariableOpв2conv2d_transpose_1/conv2d_transpose/ReadVariableOpв)conv2d_transpose_2/BiasAdd/ReadVariableOpв2conv2d_transpose_2/conv2d_transpose/ReadVariableOpв)conv2d_transpose_3/BiasAdd/ReadVariableOpв2conv2d_transpose_3/conv2d_transpose/ReadVariableOpв)conv2d_transpose_4/BiasAdd/ReadVariableOpв2conv2d_transpose_4/conv2d_transpose/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	dА@*
dtype0z
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@Г
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А@*
dtype0П
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@h
leaky_re_lu_6/LeakyRelu	LeakyReludense_3/BiasAdd:output:0*(
_output_shapes
:         А@b
reshape/ShapeShape%leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А╤
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ь
reshape/ReshapeReshape%leaky_re_lu_6/LeakyRelu:activations:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         А^
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А▐
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask┤
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Р
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Х
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╗
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АП
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╥
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3!conv2d_transpose/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=Ю
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(В
leaky_re_lu_7/LeakyRelu	LeakyRelu*batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:         Аm
conv2d_transpose_1/ShapeShape%leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аш
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╕
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0г
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0%leaky_re_lu_7/LeakyRelu:activations:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┴
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АП
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╘
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3#conv2d_transpose_1/BiasAdd:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=Ю
$batch_normalization_5/AssignNewValueAssignVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource3batch_normalization_5/FusedBatchNormV3:batch_mean:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_5/AssignNewValue_1AssignVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_5/FusedBatchNormV3:batch_variance:08^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(В
leaky_re_lu_8/LeakyRelu	LeakyRelu*batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:         Аm
conv2d_transpose_2/ShapeShape%leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аш
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╕
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0г
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%leaky_re_lu_8/LeakyRelu:activations:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Щ
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┴
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АП
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╘
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3#conv2d_transpose_2/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=Ю
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(В
leaky_re_lu_9/LeakyRelu	LeakyRelu*batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:           Аm
conv2d_transpose_3/ShapeShape%leaky_re_lu_9/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@ш
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╖
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0в
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0%leaky_re_lu_9/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@@*
paddingSAME*
strides
Ш
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0└
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@@О
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0░
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0┤
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╧
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3#conv2d_transpose_3/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@@:@:@:@:@:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=Ю
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(В
leaky_re_lu_10/LeakyRelu	LeakyRelu*batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:         @@@n
conv2d_transpose_4/ShapeShape&leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ш
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╢
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0г
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_10/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
Ш
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0└
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@v
activation/TanhTanh#conv2d_transpose_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@j
IdentityIdentityactivation/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         @@░
NoOpNoOp%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2P
&batch_normalization_5/AssignNewValue_1&batch_normalization_5/AssignNewValue_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Р	
╧
4__inference_batch_normalization_7_layer_call_fn_8114

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5404Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
┬
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7821

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╘ 
Щ
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_8215

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
р 
Ь
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_7987

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ї
c
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8059

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:           Аh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:           А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
р 
Ь
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5159

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╔
з
/__inference_conv2d_transpose_layer_call_fn_7726

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5051К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
аU
▀
F__inference_sequential_1_layer_call_and_return_conditional_losses_6158
dense_3_input
dense_3_6084:	dА@
dense_3_6086:	А@1
conv2d_transpose_6091:АА$
conv2d_transpose_6093:	А)
batch_normalization_4_6096:	А)
batch_normalization_4_6098:	А)
batch_normalization_4_6100:	А)
batch_normalization_4_6102:	А3
conv2d_transpose_1_6106:АА&
conv2d_transpose_1_6108:	А)
batch_normalization_5_6111:	А)
batch_normalization_5_6113:	А)
batch_normalization_5_6115:	А)
batch_normalization_5_6117:	А3
conv2d_transpose_2_6121:АА&
conv2d_transpose_2_6123:	А)
batch_normalization_6_6126:	А)
batch_normalization_6_6128:	А)
batch_normalization_6_6130:	А)
batch_normalization_6_6132:	А2
conv2d_transpose_3_6136:@А%
conv2d_transpose_3_6138:@(
batch_normalization_7_6141:@(
batch_normalization_7_6143:@(
batch_normalization_7_6145:@(
batch_normalization_7_6147:@1
conv2d_transpose_4_6151:@%
conv2d_transpose_4_6153:
identityИв-batch_normalization_4/StatefulPartitionedCallв-batch_normalization_5/StatefulPartitionedCallв-batch_normalization_6/StatefulPartitionedCallв-batch_normalization_7/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallв*conv2d_transpose_2/StatefulPartitionedCallв*conv2d_transpose_3/StatefulPartitionedCallв*conv2d_transpose_4/StatefulPartitionedCallвdense_3/StatefulPartitionedCallё
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_6084dense_3_6086*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_5507ц
leaky_re_lu_6/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5518р
reshape/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_5534░
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_6091conv2d_transpose_6093*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5051П
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_4_6096batch_normalization_4_6098batch_normalization_4_6100batch_normalization_4_6102*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5111№
leaky_re_lu_7/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_5555╛
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0conv2d_transpose_1_6106conv2d_transpose_1_6108*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5159С
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_5_6111batch_normalization_5_6113batch_normalization_5_6115batch_normalization_5_6117*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5219№
leaky_re_lu_8/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_5576╛
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_2_6121conv2d_transpose_2_6123*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5267С
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_6_6126batch_normalization_6_6128batch_normalization_6_6130batch_normalization_6_6132*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5327№
leaky_re_lu_9/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_5597╜
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_transpose_3_6136conv2d_transpose_3_6138*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5375Р
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_7_6141batch_normalization_7_6143batch_normalization_7_6145batch_normalization_7_6147*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5435¤
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_5618╛
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_transpose_4_6151conv2d_transpose_4_6153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5483Є
activation/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_5630z
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@З
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:V R
'
_output_shapes
:         d
'
_user_specified_namedense_3_input
Д
╛
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8163

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╔
з
1__inference_conv2d_transpose_3_layer_call_fn_8068

inputs"
unknown:@А
	unknown_0:@
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5375Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ц
√
A__inference_model_1_layer_call_and_return_conditional_losses_6223

inputs$
sequential_1_6165:	dА@ 
sequential_1_6167:	А@-
sequential_1_6169:АА 
sequential_1_6171:	А 
sequential_1_6173:	А 
sequential_1_6175:	А 
sequential_1_6177:	А 
sequential_1_6179:	А-
sequential_1_6181:АА 
sequential_1_6183:	А 
sequential_1_6185:	А 
sequential_1_6187:	А 
sequential_1_6189:	А 
sequential_1_6191:	А-
sequential_1_6193:АА 
sequential_1_6195:	А 
sequential_1_6197:	А 
sequential_1_6199:	А 
sequential_1_6201:	А 
sequential_1_6203:	А,
sequential_1_6205:@А
sequential_1_6207:@
sequential_1_6209:@
sequential_1_6211:@
sequential_1_6213:@
sequential_1_6215:@+
sequential_1_6217:@
sequential_1_6219:
identityИв$sequential_1/StatefulPartitionedCallз
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1_6165sequential_1_6167sequential_1_6169sequential_1_6171sequential_1_6173sequential_1_6175sequential_1_6177sequential_1_6179sequential_1_6181sequential_1_6183sequential_1_6185sequential_1_6187sequential_1_6189sequential_1_6191sequential_1_6193sequential_1_6195sequential_1_6197sequential_1_6199sequential_1_6201sequential_1_6203sequential_1_6205sequential_1_6207sequential_1_6209sequential_1_6211sequential_1_6213sequential_1_6215sequential_1_6217sequential_1_6219*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5633Д
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@m
NoOpNoOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ї
О
+__inference_sequential_1_layer_call_fn_5692
dense_3_input
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5633w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:         d
'
_user_specified_namedense_3_input
щ
№
A__inference_model_1_layer_call_and_return_conditional_losses_6587
input_2$
sequential_1_6529:	dА@ 
sequential_1_6531:	А@-
sequential_1_6533:АА 
sequential_1_6535:	А 
sequential_1_6537:	А 
sequential_1_6539:	А 
sequential_1_6541:	А 
sequential_1_6543:	А-
sequential_1_6545:АА 
sequential_1_6547:	А 
sequential_1_6549:	А 
sequential_1_6551:	А 
sequential_1_6553:	А 
sequential_1_6555:	А-
sequential_1_6557:АА 
sequential_1_6559:	А 
sequential_1_6561:	А 
sequential_1_6563:	А 
sequential_1_6565:	А 
sequential_1_6567:	А,
sequential_1_6569:@А
sequential_1_6571:@
sequential_1_6573:@
sequential_1_6575:@
sequential_1_6577:@
sequential_1_6579:@+
sequential_1_6581:@
sequential_1_6583:
identityИв$sequential_1/StatefulPartitionedCallи
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1_6529sequential_1_6531sequential_1_6533sequential_1_6535sequential_1_6537sequential_1_6539sequential_1_6541sequential_1_6543sequential_1_6545sequential_1_6547sequential_1_6549sequential_1_6551sequential_1_6553sequential_1_6555sequential_1_6557sequential_1_6559sequential_1_6561sequential_1_6563sequential_1_6565sequential_1_6567sequential_1_6569sequential_1_6571sequential_1_6573sequential_1_6575sequential_1_6577sequential_1_6579sequential_1_6581sequential_1_6583*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5633Д
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@m
NoOpNoOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_2
о
B
&__inference_reshape_layer_call_fn_7703

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_5534i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А@:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
▐ 
Ъ
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_7759

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╒
В
&__inference_model_1_layer_call_fn_6778

inputs
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_6223w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╪ 
Ъ
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_8101

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ф
┬
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8049

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ш	
╙
4__inference_batch_normalization_6_layer_call_fn_8000

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5296К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
═
]
A__inference_reshape_layer_call_and_return_conditional_losses_7717

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ай
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         Аa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А@:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
╪
Г
&__inference_model_1_layer_call_fn_6282
input_2
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_6223w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_2
╘ 
Щ
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5483

inputsB
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┌
Ю
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5296

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
р 
Ь
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_7873

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
с
№
A__inference_model_1_layer_call_and_return_conditional_losses_6648
input_2$
sequential_1_6590:	dА@ 
sequential_1_6592:	А@-
sequential_1_6594:АА 
sequential_1_6596:	А 
sequential_1_6598:	А 
sequential_1_6600:	А 
sequential_1_6602:	А 
sequential_1_6604:	А-
sequential_1_6606:АА 
sequential_1_6608:	А 
sequential_1_6610:	А 
sequential_1_6612:	А 
sequential_1_6614:	А 
sequential_1_6616:	А-
sequential_1_6618:АА 
sequential_1_6620:	А 
sequential_1_6622:	А 
sequential_1_6624:	А 
sequential_1_6626:	А 
sequential_1_6628:	А,
sequential_1_6630:@А
sequential_1_6632:@
sequential_1_6634:@
sequential_1_6636:@
sequential_1_6638:@
sequential_1_6640:@+
sequential_1_6642:@
sequential_1_6644:
identityИв$sequential_1/StatefulPartitionedCallа
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1_6590sequential_1_6592sequential_1_6594sequential_1_6596sequential_1_6598sequential_1_6600sequential_1_6602sequential_1_6604sequential_1_6606sequential_1_6608sequential_1_6610sequential_1_6612sequential_1_6614sequential_1_6616sequential_1_6618sequential_1_6620sequential_1_6622sequential_1_6624sequential_1_6626sequential_1_6628sequential_1_6630sequential_1_6632sequential_1_6634sequential_1_6636sequential_1_6638sequential_1_6640sequential_1_6642sequential_1_6644*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5884Д
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@m
NoOpNoOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_2
┌
Ю
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7917

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
▐
`
D__inference_activation_layer_call_and_return_conditional_losses_8225

inputs
identityN
TanhTanhinputs*
T0*/
_output_shapes
:         @@X
IdentityIdentityTanh:y:0*
T0*/
_output_shapes
:         @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
═Л
╠ 
A__inference_model_1_layer_call_and_return_conditional_losses_7016

inputsF
3sequential_1_dense_3_matmul_readvariableop_resource:	dА@C
4sequential_1_dense_3_biasadd_readvariableop_resource:	А@b
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:ААL
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	АI
:sequential_1_batch_normalization_4_readvariableop_resource:	АK
<sequential_1_batch_normalization_4_readvariableop_1_resource:	АZ
Ksequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	А\
Msequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	Аd
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:ААN
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	АI
:sequential_1_batch_normalization_5_readvariableop_resource:	АK
<sequential_1_batch_normalization_5_readvariableop_1_resource:	АZ
Ksequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	А\
Msequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	Аd
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:ААN
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:	АI
:sequential_1_batch_normalization_6_readvariableop_resource:	АK
<sequential_1_batch_normalization_6_readvariableop_1_resource:	АZ
Ksequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	А\
Msequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	Аc
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@АM
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource:@H
:sequential_1_batch_normalization_7_readvariableop_resource:@J
<sequential_1_batch_normalization_7_readvariableop_1_resource:@Y
Ksequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@[
Msequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identityИвBsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_4/ReadVariableOpв3sequential_1/batch_normalization_4/ReadVariableOp_1вBsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_5/ReadVariableOpв3sequential_1/batch_normalization_5/ReadVariableOp_1вBsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_6/ReadVariableOpв3sequential_1/batch_normalization_6/ReadVariableOp_1вBsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_7/ReadVariableOpв3sequential_1/batch_normalization_7/ReadVariableOp_1в4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpв=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpв+sequential_1/dense_3/BiasAdd/ReadVariableOpв*sequential_1/dense_3/MatMul/ReadVariableOpЯ
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	dА@*
dtype0Ф
sequential_1/dense_3/MatMulMatMulinputs2sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@Э
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А@*
dtype0╢
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@В
$sequential_1/leaky_re_lu_6/LeakyRelu	LeakyRelu%sequential_1/dense_3/BiasAdd:output:0*(
_output_shapes
:         А@|
sequential_1/reshape/ShapeShape2sequential_1/leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:r
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :f
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :g
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :АТ
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:├
sequential_1/reshape/ReshapeReshape2sequential_1/leaky_re_lu_6/LeakyRelu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         Аx
#sequential_1/conv2d_transpose/ShapeShape%sequential_1/reshape/Reshape:output:0*
T0*
_output_shapes
:{
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :g
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :h
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :АЯ
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╬
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0─
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
п
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0т
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ай
1sequential_1/batch_normalization_4/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_4_readvariableop_resource*
_output_shapes	
:А*
dtype0н
3sequential_1/batch_normalization_4/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╦
Bsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╧
Dsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Т
3sequential_1/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3.sequential_1/conv2d_transpose/BiasAdd:output:09sequential_1/batch_normalization_4/ReadVariableOp:value:0;sequential_1/batch_normalization_4/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( Ь
$sequential_1/leaky_re_lu_7/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:         АЗ
%sequential_1/conv2d_transpose_1/ShapeShape2sequential_1/leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ай
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0╫
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:02sequential_1/leaky_re_lu_7/LeakyRelu:activations:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
│
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ай
1sequential_1/batch_normalization_5/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype0н
3sequential_1/batch_normalization_5/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╦
Bsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╧
Dsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ф
3sequential_1/batch_normalization_5/FusedBatchNormV3FusedBatchNormV30sequential_1/conv2d_transpose_1/BiasAdd:output:09sequential_1/batch_normalization_5/ReadVariableOp:value:0;sequential_1/batch_normalization_5/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( Ь
$sequential_1/leaky_re_lu_8/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:         АЗ
%sequential_1/conv2d_transpose_2/ShapeShape2sequential_1/leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : i
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : j
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ай
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0╫
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/leaky_re_lu_8/LeakyRelu:activations:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
│
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Ай
1sequential_1/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype0н
3sequential_1/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╦
Bsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╧
Dsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ф
3sequential_1/batch_normalization_6/FusedBatchNormV3FusedBatchNormV30sequential_1/conv2d_transpose_2/BiasAdd:output:09sequential_1/batch_normalization_6/ReadVariableOp:value:0;sequential_1/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( Ь
$sequential_1/leaky_re_lu_9/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:           АЗ
%sequential_1/conv2d_transpose_3/ShapeShape2sequential_1/leaky_re_lu_9/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@й
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╤
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0╓
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/leaky_re_lu_9/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@@*
paddingSAME*
strides
▓
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ч
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@@и
1sequential_1/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0м
3sequential_1/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0╩
Bsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0╬
Dsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0П
3sequential_1/batch_normalization_7/FusedBatchNormV3FusedBatchNormV30sequential_1/conv2d_transpose_3/BiasAdd:output:09sequential_1/batch_normalization_7/ReadVariableOp:value:0;sequential_1/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@@:@:@:@:@:*
epsilon%ЯЁ'7*
is_training( Ь
%sequential_1/leaky_re_lu_10/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:         @@@И
%sequential_1/conv2d_transpose_4/ShapeShape3sequential_1/leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :й
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╨
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0╫
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:03sequential_1/leaky_re_lu_10/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
▓
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@Р
sequential_1/activation/TanhTanh0sequential_1/conv2d_transpose_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@w
IdentityIdentity sequential_1/activation/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         @@▄
NoOpNoOpC^sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_4/ReadVariableOp4^sequential_1/batch_normalization_4/ReadVariableOp_1C^sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_5/ReadVariableOp4^sequential_1/batch_normalization_5/ReadVariableOp_1C^sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_6/ReadVariableOp4^sequential_1/batch_normalization_6/ReadVariableOp_1C^sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_7/ReadVariableOp4^sequential_1/batch_normalization_7/ReadVariableOp_15^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2И
Bsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_4/ReadVariableOp1sequential_1/batch_normalization_4/ReadVariableOp2j
3sequential_1/batch_normalization_4/ReadVariableOp_13sequential_1/batch_normalization_4/ReadVariableOp_12И
Bsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_5/ReadVariableOp1sequential_1/batch_normalization_5/ReadVariableOp2j
3sequential_1/batch_normalization_5/ReadVariableOp_13sequential_1/batch_normalization_5/ReadVariableOp_12И
Bsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_6/ReadVariableOp1sequential_1/batch_normalization_6/ReadVariableOp2j
3sequential_1/batch_normalization_6/ReadVariableOp_13sequential_1/batch_normalization_6/ReadVariableOp_12И
Bsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_7/ReadVariableOp1sequential_1/batch_normalization_7/ReadVariableOp2j
3sequential_1/batch_normalization_7/ReadVariableOp_13sequential_1/batch_normalization_7/ReadVariableOp_12l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
їо
Ї#
A__inference_model_1_layer_call_and_return_conditional_losses_7193

inputsF
3sequential_1_dense_3_matmul_readvariableop_resource:	dА@C
4sequential_1_dense_3_biasadd_readvariableop_resource:	А@b
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:ААL
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	АI
:sequential_1_batch_normalization_4_readvariableop_resource:	АK
<sequential_1_batch_normalization_4_readvariableop_1_resource:	АZ
Ksequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	А\
Msequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	Аd
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:ААN
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	АI
:sequential_1_batch_normalization_5_readvariableop_resource:	АK
<sequential_1_batch_normalization_5_readvariableop_1_resource:	АZ
Ksequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	А\
Msequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	Аd
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:ААN
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:	АI
:sequential_1_batch_normalization_6_readvariableop_resource:	АK
<sequential_1_batch_normalization_6_readvariableop_1_resource:	АZ
Ksequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	А\
Msequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	Аc
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@АM
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource:@H
:sequential_1_batch_normalization_7_readvariableop_resource:@J
<sequential_1_batch_normalization_7_readvariableop_1_resource:@Y
Ksequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@[
Msequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identityИв1sequential_1/batch_normalization_4/AssignNewValueв3sequential_1/batch_normalization_4/AssignNewValue_1вBsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_4/ReadVariableOpв3sequential_1/batch_normalization_4/ReadVariableOp_1в1sequential_1/batch_normalization_5/AssignNewValueв3sequential_1/batch_normalization_5/AssignNewValue_1вBsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_5/ReadVariableOpв3sequential_1/batch_normalization_5/ReadVariableOp_1в1sequential_1/batch_normalization_6/AssignNewValueв3sequential_1/batch_normalization_6/AssignNewValue_1вBsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_6/ReadVariableOpв3sequential_1/batch_normalization_6/ReadVariableOp_1в1sequential_1/batch_normalization_7/AssignNewValueв3sequential_1/batch_normalization_7/AssignNewValue_1вBsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_7/ReadVariableOpв3sequential_1/batch_normalization_7/ReadVariableOp_1в4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpв=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpв6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpв?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpв+sequential_1/dense_3/BiasAdd/ReadVariableOpв*sequential_1/dense_3/MatMul/ReadVariableOpЯ
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	dА@*
dtype0Ф
sequential_1/dense_3/MatMulMatMulinputs2sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@Э
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А@*
dtype0╢
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@В
$sequential_1/leaky_re_lu_6/LeakyRelu	LeakyRelu%sequential_1/dense_3/BiasAdd:output:0*(
_output_shapes
:         А@|
sequential_1/reshape/ShapeShape2sequential_1/leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:r
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :f
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :g
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :АТ
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:├
sequential_1/reshape/ReshapeReshape2sequential_1/leaky_re_lu_6/LeakyRelu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         Аx
#sequential_1/conv2d_transpose/ShapeShape%sequential_1/reshape/Reshape:output:0*
T0*
_output_shapes
:{
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :g
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :h
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :АЯ
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╬
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0─
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
п
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0т
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ай
1sequential_1/batch_normalization_4/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_4_readvariableop_resource*
_output_shapes	
:А*
dtype0н
3sequential_1/batch_normalization_4/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╦
Bsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╧
Dsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0а
3sequential_1/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3.sequential_1/conv2d_transpose/BiasAdd:output:09sequential_1/batch_normalization_4/ReadVariableOp:value:0;sequential_1/batch_normalization_4/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╥
1sequential_1/batch_normalization_4/AssignNewValueAssignVariableOpKsequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource@sequential_1/batch_normalization_4/FusedBatchNormV3:batch_mean:0C^sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(▄
3sequential_1/batch_normalization_4/AssignNewValue_1AssignVariableOpMsequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resourceDsequential_1/batch_normalization_4/FusedBatchNormV3:batch_variance:0E^sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ь
$sequential_1/leaky_re_lu_7/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:         АЗ
%sequential_1/conv2d_transpose_1/ShapeShape2sequential_1/leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ай
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0╫
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:02sequential_1/leaky_re_lu_7/LeakyRelu:activations:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
│
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Ай
1sequential_1/batch_normalization_5/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype0н
3sequential_1/batch_normalization_5/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╦
Bsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╧
Dsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0в
3sequential_1/batch_normalization_5/FusedBatchNormV3FusedBatchNormV30sequential_1/conv2d_transpose_1/BiasAdd:output:09sequential_1/batch_normalization_5/ReadVariableOp:value:0;sequential_1/batch_normalization_5/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╥
1sequential_1/batch_normalization_5/AssignNewValueAssignVariableOpKsequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_resource@sequential_1/batch_normalization_5/FusedBatchNormV3:batch_mean:0C^sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(▄
3sequential_1/batch_normalization_5/AssignNewValue_1AssignVariableOpMsequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resourceDsequential_1/batch_normalization_5/FusedBatchNormV3:batch_variance:0E^sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ь
$sequential_1/leaky_re_lu_8/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:         АЗ
%sequential_1/conv2d_transpose_2/ShapeShape2sequential_1/leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : i
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : j
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ай
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0╫
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/leaky_re_lu_8/LeakyRelu:activations:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
│
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Ай
1sequential_1/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype0н
3sequential_1/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╦
Bsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╧
Dsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0в
3sequential_1/batch_normalization_6/FusedBatchNormV3FusedBatchNormV30sequential_1/conv2d_transpose_2/BiasAdd:output:09sequential_1/batch_normalization_6/ReadVariableOp:value:0;sequential_1/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╥
1sequential_1/batch_normalization_6/AssignNewValueAssignVariableOpKsequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_resource@sequential_1/batch_normalization_6/FusedBatchNormV3:batch_mean:0C^sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(▄
3sequential_1/batch_normalization_6/AssignNewValue_1AssignVariableOpMsequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceDsequential_1/batch_normalization_6/FusedBatchNormV3:batch_variance:0E^sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ь
$sequential_1/leaky_re_lu_9/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:           АЗ
%sequential_1/conv2d_transpose_3/ShapeShape2sequential_1/leaky_re_lu_9/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@й
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╤
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0╓
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/leaky_re_lu_9/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@@*
paddingSAME*
strides
▓
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ч
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@@и
1sequential_1/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0м
3sequential_1/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0╩
Bsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0╬
Dsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Э
3sequential_1/batch_normalization_7/FusedBatchNormV3FusedBatchNormV30sequential_1/conv2d_transpose_3/BiasAdd:output:09sequential_1/batch_normalization_7/ReadVariableOp:value:0;sequential_1/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@@:@:@:@:@:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╥
1sequential_1/batch_normalization_7/AssignNewValueAssignVariableOpKsequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_resource@sequential_1/batch_normalization_7/FusedBatchNormV3:batch_mean:0C^sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(▄
3sequential_1/batch_normalization_7/AssignNewValue_1AssignVariableOpMsequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceDsequential_1/batch_normalization_7/FusedBatchNormV3:batch_variance:0E^sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ь
%sequential_1/leaky_re_lu_10/LeakyRelu	LeakyRelu7sequential_1/batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:         @@@И
%sequential_1/conv2d_transpose_4/ShapeShape3sequential_1/leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@i
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :й
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╨
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0╫
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:03sequential_1/leaky_re_lu_10/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
▓
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@Р
sequential_1/activation/TanhTanh0sequential_1/conv2d_transpose_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@w
IdentityIdentity sequential_1/activation/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         @@Д
NoOpNoOp2^sequential_1/batch_normalization_4/AssignNewValue4^sequential_1/batch_normalization_4/AssignNewValue_1C^sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_4/ReadVariableOp4^sequential_1/batch_normalization_4/ReadVariableOp_12^sequential_1/batch_normalization_5/AssignNewValue4^sequential_1/batch_normalization_5/AssignNewValue_1C^sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_5/ReadVariableOp4^sequential_1/batch_normalization_5/ReadVariableOp_12^sequential_1/batch_normalization_6/AssignNewValue4^sequential_1/batch_normalization_6/AssignNewValue_1C^sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_6/ReadVariableOp4^sequential_1/batch_normalization_6/ReadVariableOp_12^sequential_1/batch_normalization_7/AssignNewValue4^sequential_1/batch_normalization_7/AssignNewValue_1C^sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_7/ReadVariableOp4^sequential_1/batch_normalization_7/ReadVariableOp_15^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1sequential_1/batch_normalization_4/AssignNewValue1sequential_1/batch_normalization_4/AssignNewValue2j
3sequential_1/batch_normalization_4/AssignNewValue_13sequential_1/batch_normalization_4/AssignNewValue_12И
Bsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_4/ReadVariableOp1sequential_1/batch_normalization_4/ReadVariableOp2j
3sequential_1/batch_normalization_4/ReadVariableOp_13sequential_1/batch_normalization_4/ReadVariableOp_12f
1sequential_1/batch_normalization_5/AssignNewValue1sequential_1/batch_normalization_5/AssignNewValue2j
3sequential_1/batch_normalization_5/AssignNewValue_13sequential_1/batch_normalization_5/AssignNewValue_12И
Bsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_5/ReadVariableOp1sequential_1/batch_normalization_5/ReadVariableOp2j
3sequential_1/batch_normalization_5/ReadVariableOp_13sequential_1/batch_normalization_5/ReadVariableOp_12f
1sequential_1/batch_normalization_6/AssignNewValue1sequential_1/batch_normalization_6/AssignNewValue2j
3sequential_1/batch_normalization_6/AssignNewValue_13sequential_1/batch_normalization_6/AssignNewValue_12И
Bsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_6/ReadVariableOp1sequential_1/batch_normalization_6/ReadVariableOp2j
3sequential_1/batch_normalization_6/ReadVariableOp_13sequential_1/batch_normalization_6/ReadVariableOp_12f
1sequential_1/batch_normalization_7/AssignNewValue1sequential_1/batch_normalization_7/AssignNewValue2j
3sequential_1/batch_normalization_7/AssignNewValue_13sequential_1/batch_normalization_7/AssignNewValue_12И
Bsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_7/ReadVariableOp1sequential_1/batch_normalization_7/ReadVariableOp2j
3sequential_1/batch_normalization_7/ReadVariableOp_13sequential_1/batch_normalization_7/ReadVariableOp_12l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2В
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Лж
ы#
__inference__wrapped_model_5014
input_2N
;model_1_sequential_1_dense_3_matmul_readvariableop_resource:	dА@K
<model_1_sequential_1_dense_3_biasadd_readvariableop_resource:	А@j
Nmodel_1_sequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:ААT
Emodel_1_sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	АQ
Bmodel_1_sequential_1_batch_normalization_4_readvariableop_resource:	АS
Dmodel_1_sequential_1_batch_normalization_4_readvariableop_1_resource:	Аb
Smodel_1_sequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	Аd
Umodel_1_sequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	Аl
Pmodel_1_sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:ААV
Gmodel_1_sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	АQ
Bmodel_1_sequential_1_batch_normalization_5_readvariableop_resource:	АS
Dmodel_1_sequential_1_batch_normalization_5_readvariableop_1_resource:	Аb
Smodel_1_sequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	Аd
Umodel_1_sequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	Аl
Pmodel_1_sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:ААV
Gmodel_1_sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:	АQ
Bmodel_1_sequential_1_batch_normalization_6_readvariableop_resource:	АS
Dmodel_1_sequential_1_batch_normalization_6_readvariableop_1_resource:	Аb
Smodel_1_sequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	Аd
Umodel_1_sequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	Аk
Pmodel_1_sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@АU
Gmodel_1_sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource:@P
Bmodel_1_sequential_1_batch_normalization_7_readvariableop_resource:@R
Dmodel_1_sequential_1_batch_normalization_7_readvariableop_1_resource:@a
Smodel_1_sequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@c
Umodel_1_sequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@j
Pmodel_1_sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@U
Gmodel_1_sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identityИвJmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвLmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в9model_1/sequential_1/batch_normalization_4/ReadVariableOpв;model_1/sequential_1/batch_normalization_4/ReadVariableOp_1вJmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвLmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в9model_1/sequential_1/batch_normalization_5/ReadVariableOpв;model_1/sequential_1/batch_normalization_5/ReadVariableOp_1вJmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpвLmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в9model_1/sequential_1/batch_normalization_6/ReadVariableOpв;model_1/sequential_1/batch_normalization_6/ReadVariableOp_1вJmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpвLmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1в9model_1/sequential_1/batch_normalization_7/ReadVariableOpв;model_1/sequential_1/batch_normalization_7/ReadVariableOp_1в<model_1/sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpвEmodel_1/sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpв>model_1/sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpвGmodel_1/sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpв>model_1/sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpвGmodel_1/sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpв>model_1/sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpвGmodel_1/sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpв>model_1/sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpвGmodel_1/sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpв3model_1/sequential_1/dense_3/BiasAdd/ReadVariableOpв2model_1/sequential_1/dense_3/MatMul/ReadVariableOpп
2model_1/sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp;model_1_sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	dА@*
dtype0е
#model_1/sequential_1/dense_3/MatMulMatMulinput_2:model_1/sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@н
3model_1/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp<model_1_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А@*
dtype0╬
$model_1/sequential_1/dense_3/BiasAddBiasAdd-model_1/sequential_1/dense_3/MatMul:product:0;model_1/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@Т
,model_1/sequential_1/leaky_re_lu_6/LeakyRelu	LeakyRelu-model_1/sequential_1/dense_3/BiasAdd:output:0*(
_output_shapes
:         А@М
"model_1/sequential_1/reshape/ShapeShape:model_1/sequential_1/leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:z
0model_1/sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_1/sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*model_1/sequential_1/reshape/strided_sliceStridedSlice+model_1/sequential_1/reshape/Shape:output:09model_1/sequential_1/reshape/strided_slice/stack:output:0;model_1/sequential_1/reshape/strided_slice/stack_1:output:0;model_1/sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,model_1/sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :n
,model_1/sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
,model_1/sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А║
*model_1/sequential_1/reshape/Reshape/shapePack3model_1/sequential_1/reshape/strided_slice:output:05model_1/sequential_1/reshape/Reshape/shape/1:output:05model_1/sequential_1/reshape/Reshape/shape/2:output:05model_1/sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:█
$model_1/sequential_1/reshape/ReshapeReshape:model_1/sequential_1/leaky_re_lu_6/LeakyRelu:activations:03model_1/sequential_1/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         АИ
+model_1/sequential_1/conv2d_transpose/ShapeShape-model_1/sequential_1/reshape/Reshape:output:0*
T0*
_output_shapes
:Г
9model_1/sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;model_1/sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;model_1/sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
3model_1/sequential_1/conv2d_transpose/strided_sliceStridedSlice4model_1/sequential_1/conv2d_transpose/Shape:output:0Bmodel_1/sequential_1/conv2d_transpose/strided_slice/stack:output:0Dmodel_1/sequential_1/conv2d_transpose/strided_slice/stack_1:output:0Dmodel_1/sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-model_1/sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :o
-model_1/sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :p
-model_1/sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А╟
+model_1/sequential_1/conv2d_transpose/stackPack<model_1/sequential_1/conv2d_transpose/strided_slice:output:06model_1/sequential_1/conv2d_transpose/stack/1:output:06model_1/sequential_1/conv2d_transpose/stack/2:output:06model_1/sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:Е
;model_1/sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=model_1/sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=model_1/sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
5model_1/sequential_1/conv2d_transpose/strided_slice_1StridedSlice4model_1/sequential_1/conv2d_transpose/stack:output:0Dmodel_1/sequential_1/conv2d_transpose/strided_slice_1/stack:output:0Fmodel_1/sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0Fmodel_1/sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask▐
Emodel_1/sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpNmodel_1_sequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
6model_1/sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput4model_1/sequential_1/conv2d_transpose/stack:output:0Mmodel_1/sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0-model_1/sequential_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
┐
<model_1/sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpEmodel_1_sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0·
-model_1/sequential_1/conv2d_transpose/BiasAddBiasAdd?model_1/sequential_1/conv2d_transpose/conv2d_transpose:output:0Dmodel_1/sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╣
9model_1/sequential_1/batch_normalization_4/ReadVariableOpReadVariableOpBmodel_1_sequential_1_batch_normalization_4_readvariableop_resource*
_output_shapes	
:А*
dtype0╜
;model_1/sequential_1/batch_normalization_4/ReadVariableOp_1ReadVariableOpDmodel_1_sequential_1_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
Jmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_sequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0▀
Lmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_sequential_1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0┬
;model_1/sequential_1/batch_normalization_4/FusedBatchNormV3FusedBatchNormV36model_1/sequential_1/conv2d_transpose/BiasAdd:output:0Amodel_1/sequential_1/batch_normalization_4/ReadVariableOp:value:0Cmodel_1/sequential_1/batch_normalization_4/ReadVariableOp_1:value:0Rmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( м
,model_1/sequential_1/leaky_re_lu_7/LeakyRelu	LeakyRelu?model_1/sequential_1/batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:         АЧ
-model_1/sequential_1/conv2d_transpose_1/ShapeShape:model_1/sequential_1/leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
:Е
;model_1/sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=model_1/sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=model_1/sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
5model_1/sequential_1/conv2d_transpose_1/strided_sliceStridedSlice6model_1/sequential_1/conv2d_transpose_1/Shape:output:0Dmodel_1/sequential_1/conv2d_transpose_1/strided_slice/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0Fmodel_1/sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/model_1/sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :q
/model_1/sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :r
/model_1/sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А╤
-model_1/sequential_1/conv2d_transpose_1/stackPack>model_1/sequential_1/conv2d_transpose_1/strided_slice:output:08model_1/sequential_1/conv2d_transpose_1/stack/1:output:08model_1/sequential_1/conv2d_transpose_1/stack/2:output:08model_1/sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:З
=model_1/sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?model_1/sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?model_1/sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
7model_1/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice6model_1/sequential_1/conv2d_transpose_1/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0Hmodel_1/sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0Hmodel_1/sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskт
Gmodel_1/sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpPmodel_1_sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0ў
8model_1/sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput6model_1/sequential_1/conv2d_transpose_1/stack:output:0Omodel_1/sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0:model_1/sequential_1/leaky_re_lu_7/LeakyRelu:activations:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
├
>model_1/sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpGmodel_1_sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
/model_1/sequential_1/conv2d_transpose_1/BiasAddBiasAddAmodel_1/sequential_1/conv2d_transpose_1/conv2d_transpose:output:0Fmodel_1/sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╣
9model_1/sequential_1/batch_normalization_5/ReadVariableOpReadVariableOpBmodel_1_sequential_1_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype0╜
;model_1/sequential_1/batch_normalization_5/ReadVariableOp_1ReadVariableOpDmodel_1_sequential_1_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
Jmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_sequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0▀
Lmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_sequential_1_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0─
;model_1/sequential_1/batch_normalization_5/FusedBatchNormV3FusedBatchNormV38model_1/sequential_1/conv2d_transpose_1/BiasAdd:output:0Amodel_1/sequential_1/batch_normalization_5/ReadVariableOp:value:0Cmodel_1/sequential_1/batch_normalization_5/ReadVariableOp_1:value:0Rmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( м
,model_1/sequential_1/leaky_re_lu_8/LeakyRelu	LeakyRelu?model_1/sequential_1/batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:         АЧ
-model_1/sequential_1/conv2d_transpose_2/ShapeShape:model_1/sequential_1/leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
:Е
;model_1/sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=model_1/sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=model_1/sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
5model_1/sequential_1/conv2d_transpose_2/strided_sliceStridedSlice6model_1/sequential_1/conv2d_transpose_2/Shape:output:0Dmodel_1/sequential_1/conv2d_transpose_2/strided_slice/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0Fmodel_1/sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/model_1/sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : q
/model_1/sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : r
/model_1/sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А╤
-model_1/sequential_1/conv2d_transpose_2/stackPack>model_1/sequential_1/conv2d_transpose_2/strided_slice:output:08model_1/sequential_1/conv2d_transpose_2/stack/1:output:08model_1/sequential_1/conv2d_transpose_2/stack/2:output:08model_1/sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:З
=model_1/sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?model_1/sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?model_1/sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
7model_1/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice6model_1/sequential_1/conv2d_transpose_2/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0Hmodel_1/sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0Hmodel_1/sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskт
Gmodel_1/sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpPmodel_1_sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0ў
8model_1/sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput6model_1/sequential_1/conv2d_transpose_2/stack:output:0Omodel_1/sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0:model_1/sequential_1/leaky_re_lu_8/LeakyRelu:activations:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
├
>model_1/sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpGmodel_1_sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
/model_1/sequential_1/conv2d_transpose_2/BiasAddBiasAddAmodel_1/sequential_1/conv2d_transpose_2/conv2d_transpose:output:0Fmodel_1/sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А╣
9model_1/sequential_1/batch_normalization_6/ReadVariableOpReadVariableOpBmodel_1_sequential_1_batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype0╜
;model_1/sequential_1/batch_normalization_6/ReadVariableOp_1ReadVariableOpDmodel_1_sequential_1_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
Jmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_sequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0▀
Lmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_sequential_1_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0─
;model_1/sequential_1/batch_normalization_6/FusedBatchNormV3FusedBatchNormV38model_1/sequential_1/conv2d_transpose_2/BiasAdd:output:0Amodel_1/sequential_1/batch_normalization_6/ReadVariableOp:value:0Cmodel_1/sequential_1/batch_normalization_6/ReadVariableOp_1:value:0Rmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( м
,model_1/sequential_1/leaky_re_lu_9/LeakyRelu	LeakyRelu?model_1/sequential_1/batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:           АЧ
-model_1/sequential_1/conv2d_transpose_3/ShapeShape:model_1/sequential_1/leaky_re_lu_9/LeakyRelu:activations:0*
T0*
_output_shapes
:Е
;model_1/sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=model_1/sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=model_1/sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
5model_1/sequential_1/conv2d_transpose_3/strided_sliceStridedSlice6model_1/sequential_1/conv2d_transpose_3/Shape:output:0Dmodel_1/sequential_1/conv2d_transpose_3/strided_slice/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0Fmodel_1/sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/model_1/sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@q
/model_1/sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@q
/model_1/sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@╤
-model_1/sequential_1/conv2d_transpose_3/stackPack>model_1/sequential_1/conv2d_transpose_3/strided_slice:output:08model_1/sequential_1/conv2d_transpose_3/stack/1:output:08model_1/sequential_1/conv2d_transpose_3/stack/2:output:08model_1/sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:З
=model_1/sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?model_1/sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?model_1/sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
7model_1/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice6model_1/sequential_1/conv2d_transpose_3/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0Hmodel_1/sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0Hmodel_1/sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskс
Gmodel_1/sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpPmodel_1_sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ў
8model_1/sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput6model_1/sequential_1/conv2d_transpose_3/stack:output:0Omodel_1/sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0:model_1/sequential_1/leaky_re_lu_9/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@@*
paddingSAME*
strides
┬
>model_1/sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOpGmodel_1_sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0 
/model_1/sequential_1/conv2d_transpose_3/BiasAddBiasAddAmodel_1/sequential_1/conv2d_transpose_3/conv2d_transpose:output:0Fmodel_1/sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@@╕
9model_1/sequential_1/batch_normalization_7/ReadVariableOpReadVariableOpBmodel_1_sequential_1_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0╝
;model_1/sequential_1/batch_normalization_7/ReadVariableOp_1ReadVariableOpDmodel_1_sequential_1_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0┌
Jmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_sequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0▐
Lmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_sequential_1_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0┐
;model_1/sequential_1/batch_normalization_7/FusedBatchNormV3FusedBatchNormV38model_1/sequential_1/conv2d_transpose_3/BiasAdd:output:0Amodel_1/sequential_1/batch_normalization_7/ReadVariableOp:value:0Cmodel_1/sequential_1/batch_normalization_7/ReadVariableOp_1:value:0Rmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@@:@:@:@:@:*
epsilon%ЯЁ'7*
is_training( м
-model_1/sequential_1/leaky_re_lu_10/LeakyRelu	LeakyRelu?model_1/sequential_1/batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:         @@@Ш
-model_1/sequential_1/conv2d_transpose_4/ShapeShape;model_1/sequential_1/leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:Е
;model_1/sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=model_1/sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=model_1/sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
5model_1/sequential_1/conv2d_transpose_4/strided_sliceStridedSlice6model_1/sequential_1/conv2d_transpose_4/Shape:output:0Dmodel_1/sequential_1/conv2d_transpose_4/strided_slice/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0Fmodel_1/sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/model_1/sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@q
/model_1/sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@q
/model_1/sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╤
-model_1/sequential_1/conv2d_transpose_4/stackPack>model_1/sequential_1/conv2d_transpose_4/strided_slice:output:08model_1/sequential_1/conv2d_transpose_4/stack/1:output:08model_1/sequential_1/conv2d_transpose_4/stack/2:output:08model_1/sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:З
=model_1/sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?model_1/sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?model_1/sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
7model_1/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice6model_1/sequential_1/conv2d_transpose_4/stack:output:0Fmodel_1/sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0Hmodel_1/sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0Hmodel_1/sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskр
Gmodel_1/sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpPmodel_1_sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0ў
8model_1/sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput6model_1/sequential_1/conv2d_transpose_4/stack:output:0Omodel_1/sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0;model_1/sequential_1/leaky_re_lu_10/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
┬
>model_1/sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOpGmodel_1_sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
/model_1/sequential_1/conv2d_transpose_4/BiasAddBiasAddAmodel_1/sequential_1/conv2d_transpose_4/conv2d_transpose:output:0Fmodel_1/sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@а
$model_1/sequential_1/activation/TanhTanh8model_1/sequential_1/conv2d_transpose_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@
IdentityIdentity(model_1/sequential_1/activation/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         @@╝
NoOpNoOpK^model_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpM^model_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:^model_1/sequential_1/batch_normalization_4/ReadVariableOp<^model_1/sequential_1/batch_normalization_4/ReadVariableOp_1K^model_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpM^model_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:^model_1/sequential_1/batch_normalization_5/ReadVariableOp<^model_1/sequential_1/batch_normalization_5/ReadVariableOp_1K^model_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpM^model_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:^model_1/sequential_1/batch_normalization_6/ReadVariableOp<^model_1/sequential_1/batch_normalization_6/ReadVariableOp_1K^model_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpM^model_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:^model_1/sequential_1/batch_normalization_7/ReadVariableOp<^model_1/sequential_1/batch_normalization_7/ReadVariableOp_1=^model_1/sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpF^model_1/sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?^model_1/sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpH^model_1/sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?^model_1/sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpH^model_1/sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?^model_1/sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpH^model_1/sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?^model_1/sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpH^model_1/sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp4^model_1/sequential_1/dense_3/BiasAdd/ReadVariableOp3^model_1/sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Ш
Jmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpJmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2Ь
Lmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Lmodel_1/sequential_1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12v
9model_1/sequential_1/batch_normalization_4/ReadVariableOp9model_1/sequential_1/batch_normalization_4/ReadVariableOp2z
;model_1/sequential_1/batch_normalization_4/ReadVariableOp_1;model_1/sequential_1/batch_normalization_4/ReadVariableOp_12Ш
Jmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOpJmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2Ь
Lmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Lmodel_1/sequential_1/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12v
9model_1/sequential_1/batch_normalization_5/ReadVariableOp9model_1/sequential_1/batch_normalization_5/ReadVariableOp2z
;model_1/sequential_1/batch_normalization_5/ReadVariableOp_1;model_1/sequential_1/batch_normalization_5/ReadVariableOp_12Ш
Jmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOpJmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2Ь
Lmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Lmodel_1/sequential_1/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12v
9model_1/sequential_1/batch_normalization_6/ReadVariableOp9model_1/sequential_1/batch_normalization_6/ReadVariableOp2z
;model_1/sequential_1/batch_normalization_6/ReadVariableOp_1;model_1/sequential_1/batch_normalization_6/ReadVariableOp_12Ш
Jmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOpJmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2Ь
Lmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Lmodel_1/sequential_1/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12v
9model_1/sequential_1/batch_normalization_7/ReadVariableOp9model_1/sequential_1/batch_normalization_7/ReadVariableOp2z
;model_1/sequential_1/batch_normalization_7/ReadVariableOp_1;model_1/sequential_1/batch_normalization_7/ReadVariableOp_12|
<model_1/sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp<model_1/sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2О
Emodel_1/sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpEmodel_1/sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2А
>model_1/sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp>model_1/sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2Т
Gmodel_1/sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpGmodel_1/sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2А
>model_1/sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp>model_1/sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2Т
Gmodel_1/sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpGmodel_1/sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2А
>model_1/sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp>model_1/sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2Т
Gmodel_1/sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpGmodel_1/sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2А
>model_1/sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp>model_1/sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2Т
Gmodel_1/sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpGmodel_1/sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2j
3model_1/sequential_1/dense_3/BiasAdd/ReadVariableOp3model_1/sequential_1/dense_3/BiasAdd/ReadVariableOp2h
2model_1/sequential_1/dense_3/MatMul/ReadVariableOp2model_1/sequential_1/dense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:         d
!
_user_specified_name	input_2
┌
Ю
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5188

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
О	
╧
4__inference_batch_normalization_7_layer_call_fn_8127

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5435Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┐м
Р4
 __inference__traced_restore_8708
file_prefix2
assignvariableop_dense_3_kernel:	dА@.
assignvariableop_1_dense_3_bias:	А@F
*assignvariableop_2_conv2d_transpose_kernel:АА7
(assignvariableop_3_conv2d_transpose_bias:	А=
.assignvariableop_4_batch_normalization_4_gamma:	А<
-assignvariableop_5_batch_normalization_4_beta:	АC
4assignvariableop_6_batch_normalization_4_moving_mean:	АG
8assignvariableop_7_batch_normalization_4_moving_variance:	АH
,assignvariableop_8_conv2d_transpose_1_kernel:АА9
*assignvariableop_9_conv2d_transpose_1_bias:	А>
/assignvariableop_10_batch_normalization_5_gamma:	А=
.assignvariableop_11_batch_normalization_5_beta:	АD
5assignvariableop_12_batch_normalization_5_moving_mean:	АH
9assignvariableop_13_batch_normalization_5_moving_variance:	АI
-assignvariableop_14_conv2d_transpose_2_kernel:АА:
+assignvariableop_15_conv2d_transpose_2_bias:	А>
/assignvariableop_16_batch_normalization_6_gamma:	А=
.assignvariableop_17_batch_normalization_6_beta:	АD
5assignvariableop_18_batch_normalization_6_moving_mean:	АH
9assignvariableop_19_batch_normalization_6_moving_variance:	АH
-assignvariableop_20_conv2d_transpose_3_kernel:@А9
+assignvariableop_21_conv2d_transpose_3_bias:@=
/assignvariableop_22_batch_normalization_7_gamma:@<
.assignvariableop_23_batch_normalization_7_beta:@C
5assignvariableop_24_batch_normalization_7_moving_mean:@G
9assignvariableop_25_batch_normalization_7_moving_variance:@G
-assignvariableop_26_conv2d_transpose_4_kernel:@9
+assignvariableop_27_conv2d_transpose_4_bias:'
assignvariableop_28_adam_iter:	 )
assignvariableop_29_adam_beta_1: )
assignvariableop_30_adam_beta_2: (
assignvariableop_31_adam_decay: 0
&assignvariableop_32_adam_learning_rate: #
assignvariableop_33_total: #
assignvariableop_34_count: <
)assignvariableop_35_adam_dense_3_kernel_m:	dА@6
'assignvariableop_36_adam_dense_3_bias_m:	А@N
2assignvariableop_37_adam_conv2d_transpose_kernel_m:АА?
0assignvariableop_38_adam_conv2d_transpose_bias_m:	АE
6assignvariableop_39_adam_batch_normalization_4_gamma_m:	АD
5assignvariableop_40_adam_batch_normalization_4_beta_m:	АP
4assignvariableop_41_adam_conv2d_transpose_1_kernel_m:ААA
2assignvariableop_42_adam_conv2d_transpose_1_bias_m:	АE
6assignvariableop_43_adam_batch_normalization_5_gamma_m:	АD
5assignvariableop_44_adam_batch_normalization_5_beta_m:	АP
4assignvariableop_45_adam_conv2d_transpose_2_kernel_m:ААA
2assignvariableop_46_adam_conv2d_transpose_2_bias_m:	АE
6assignvariableop_47_adam_batch_normalization_6_gamma_m:	АD
5assignvariableop_48_adam_batch_normalization_6_beta_m:	АO
4assignvariableop_49_adam_conv2d_transpose_3_kernel_m:@А@
2assignvariableop_50_adam_conv2d_transpose_3_bias_m:@D
6assignvariableop_51_adam_batch_normalization_7_gamma_m:@C
5assignvariableop_52_adam_batch_normalization_7_beta_m:@N
4assignvariableop_53_adam_conv2d_transpose_4_kernel_m:@@
2assignvariableop_54_adam_conv2d_transpose_4_bias_m:<
)assignvariableop_55_adam_dense_3_kernel_v:	dА@6
'assignvariableop_56_adam_dense_3_bias_v:	А@N
2assignvariableop_57_adam_conv2d_transpose_kernel_v:АА?
0assignvariableop_58_adam_conv2d_transpose_bias_v:	АE
6assignvariableop_59_adam_batch_normalization_4_gamma_v:	АD
5assignvariableop_60_adam_batch_normalization_4_beta_v:	АP
4assignvariableop_61_adam_conv2d_transpose_1_kernel_v:ААA
2assignvariableop_62_adam_conv2d_transpose_1_bias_v:	АE
6assignvariableop_63_adam_batch_normalization_5_gamma_v:	АD
5assignvariableop_64_adam_batch_normalization_5_beta_v:	АP
4assignvariableop_65_adam_conv2d_transpose_2_kernel_v:ААA
2assignvariableop_66_adam_conv2d_transpose_2_bias_v:	АE
6assignvariableop_67_adam_batch_normalization_6_gamma_v:	АD
5assignvariableop_68_adam_batch_normalization_6_beta_v:	АO
4assignvariableop_69_adam_conv2d_transpose_3_kernel_v:@А@
2assignvariableop_70_adam_conv2d_transpose_3_bias_v:@D
6assignvariableop_71_adam_batch_normalization_7_gamma_v:@C
5assignvariableop_72_adam_batch_normalization_7_beta_v:@N
4assignvariableop_73_adam_conv2d_transpose_4_kernel_v:@@
2assignvariableop_74_adam_conv2d_transpose_4_bias_v:
identity_76ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_8вAssignVariableOp_9И"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*о!
valueд!Bб!LB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЛ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*н
valueгBаLB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Э
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╞
_output_shapes│
░::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_2AssignVariableOp*assignvariableop_2_conv2d_transpose_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_3AssignVariableOp(assignvariableop_3_conv2d_transpose_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_4_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_5AssignVariableOp-assignvariableop_5_batch_normalization_4_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_6AssignVariableOp4assignvariableop_6_batch_normalization_4_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_7AssignVariableOp8assignvariableop_7_batch_normalization_4_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_8AssignVariableOp,assignvariableop_8_conv2d_transpose_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_9AssignVariableOp*assignvariableop_9_conv2d_transpose_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_5_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_11AssignVariableOp.assignvariableop_11_batch_normalization_5_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_12AssignVariableOp5assignvariableop_12_batch_normalization_5_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_13AssignVariableOp9assignvariableop_13_batch_normalization_5_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_14AssignVariableOp-assignvariableop_14_conv2d_transpose_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_15AssignVariableOp+assignvariableop_15_conv2d_transpose_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_6_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_6_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_6_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_6_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_20AssignVariableOp-assignvariableop_20_conv2d_transpose_3_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_21AssignVariableOp+assignvariableop_21_conv2d_transpose_3_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_22AssignVariableOp/assignvariableop_22_batch_normalization_7_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_23AssignVariableOp.assignvariableop_23_batch_normalization_7_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_24AssignVariableOp5assignvariableop_24_batch_normalization_7_moving_meanIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_25AssignVariableOp9assignvariableop_25_batch_normalization_7_moving_varianceIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_26AssignVariableOp-assignvariableop_26_conv2d_transpose_4_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_27AssignVariableOp+assignvariableop_27_conv2d_transpose_4_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_3_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_3_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_37AssignVariableOp2assignvariableop_37_adam_conv2d_transpose_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_38AssignVariableOp0assignvariableop_38_adam_conv2d_transpose_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_batch_normalization_4_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_batch_normalization_4_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_conv2d_transpose_1_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_conv2d_transpose_1_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_batch_normalization_5_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adam_batch_normalization_5_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_conv2d_transpose_2_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_conv2d_transpose_2_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_batch_normalization_6_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_48AssignVariableOp5assignvariableop_48_adam_batch_normalization_6_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_49AssignVariableOp4assignvariableop_49_adam_conv2d_transpose_3_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adam_conv2d_transpose_3_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_batch_normalization_7_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_52AssignVariableOp5assignvariableop_52_adam_batch_normalization_7_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_53AssignVariableOp4assignvariableop_53_adam_conv2d_transpose_4_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_54AssignVariableOp2assignvariableop_54_adam_conv2d_transpose_4_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_3_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_3_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_57AssignVariableOp2assignvariableop_57_adam_conv2d_transpose_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_58AssignVariableOp0assignvariableop_58_adam_conv2d_transpose_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_batch_normalization_4_gamma_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_batch_normalization_4_beta_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_61AssignVariableOp4assignvariableop_61_adam_conv2d_transpose_1_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_62AssignVariableOp2assignvariableop_62_adam_conv2d_transpose_1_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_batch_normalization_5_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_batch_normalization_5_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_65AssignVariableOp4assignvariableop_65_adam_conv2d_transpose_2_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_66AssignVariableOp2assignvariableop_66_adam_conv2d_transpose_2_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_batch_normalization_6_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_68AssignVariableOp5assignvariableop_68_adam_batch_normalization_6_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_69AssignVariableOp4assignvariableop_69_adam_conv2d_transpose_3_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_70AssignVariableOp2assignvariableop_70_adam_conv2d_transpose_3_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_batch_normalization_7_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_72AssignVariableOp5assignvariableop_72_adam_batch_normalization_7_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_73AssignVariableOp4assignvariableop_73_adam_conv2d_transpose_4_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_74AssignVariableOp2assignvariableop_74_adam_conv2d_transpose_4_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┴
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: о
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_76Identity_76:output:0*н
_input_shapesЫ
Ш: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
═
й
1__inference_conv2d_transpose_1_layer_call_fn_7840

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5159К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
▓
 
"__inference_signature_wrapper_6717
input_2
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__wrapped_model_5014w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_2
┌
Ю
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5080

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╩
Ъ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8145

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%ЯЁ'7*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╒
c
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5518

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:         А@`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А@:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
╦	
Ї
A__inference_dense_3_layer_call_and_return_conditional_losses_5507

inputs1
matmul_readvariableop_resource:	dА@.
biasadd_readvariableop_resource:	А@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А@*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
═
й
1__inference_conv2d_transpose_2_layer_call_fn_7954

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5267К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
к
H
,__inference_leaky_re_lu_6_layer_call_fn_7693

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5518a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А@:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
═
В
&__inference_model_1_layer_call_fn_6839

inputs
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_6406w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
пр
∙
F__inference_sequential_1_layer_call_and_return_conditional_losses_7492

inputs9
&dense_3_matmul_readvariableop_resource:	dА@6
'dense_3_biasadd_readvariableop_resource:	А@U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:АА?
0conv2d_transpose_biasadd_readvariableop_resource:	А<
-batch_normalization_4_readvariableop_resource:	А>
/batch_normalization_4_readvariableop_1_resource:	АM
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	АW
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:ААA
2conv2d_transpose_1_biasadd_readvariableop_resource:	А<
-batch_normalization_5_readvariableop_resource:	А>
/batch_normalization_5_readvariableop_1_resource:	АM
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	АW
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:ААA
2conv2d_transpose_2_biasadd_readvariableop_resource:	А<
-batch_normalization_6_readvariableop_resource:	А>
/batch_normalization_6_readvariableop_1_resource:	АM
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	АV
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@А@
2conv2d_transpose_3_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@U
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@@
2conv2d_transpose_4_biasadd_readvariableop_resource:
identityИв5batch_normalization_4/FusedBatchNormV3/ReadVariableOpв7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_4/ReadVariableOpв&batch_normalization_4/ReadVariableOp_1в5batch_normalization_5/FusedBatchNormV3/ReadVariableOpв7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_5/ReadVariableOpв&batch_normalization_5/ReadVariableOp_1в5batch_normalization_6/FusedBatchNormV3/ReadVariableOpв7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_6/ReadVariableOpв&batch_normalization_6/ReadVariableOp_1в5batch_normalization_7/FusedBatchNormV3/ReadVariableOpв7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_7/ReadVariableOpв&batch_normalization_7/ReadVariableOp_1в'conv2d_transpose/BiasAdd/ReadVariableOpв0conv2d_transpose/conv2d_transpose/ReadVariableOpв)conv2d_transpose_1/BiasAdd/ReadVariableOpв2conv2d_transpose_1/conv2d_transpose/ReadVariableOpв)conv2d_transpose_2/BiasAdd/ReadVariableOpв2conv2d_transpose_2/conv2d_transpose/ReadVariableOpв)conv2d_transpose_3/BiasAdd/ReadVariableOpв2conv2d_transpose_3/conv2d_transpose/ReadVariableOpв)conv2d_transpose_4/BiasAdd/ReadVariableOpв2conv2d_transpose_4/conv2d_transpose/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	dА@*
dtype0z
dense_3/MatMulMatMulinputs%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@Г
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:А@*
dtype0П
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А@h
leaky_re_lu_6/LeakyRelu	LeakyReludense_3/BiasAdd:output:0*(
_output_shapes
:         А@b
reshape/ShapeShape%leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А╤
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ь
reshape/ReshapeReshape%leaky_re_lu_6/LeakyRelu:activations:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         А^
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А▐
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask┤
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0Р
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Х
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╗
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АП
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0─
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3!conv2d_transpose/BiasAdd:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( В
leaky_re_lu_7/LeakyRelu	LeakyRelu*batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:         Аm
conv2d_transpose_1/ShapeShape%leaky_re_lu_7/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аш
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╕
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0г
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0%leaky_re_lu_7/LeakyRelu:activations:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Щ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┴
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АП
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╞
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3#conv2d_transpose_1/BiasAdd:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( В
leaky_re_lu_8/LeakyRelu	LeakyRelu*batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:         Аm
conv2d_transpose_2/ShapeShape%leaky_re_lu_8/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аш
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╕
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0г
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%leaky_re_lu_8/LeakyRelu:activations:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Щ
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┴
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АП
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╞
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3#conv2d_transpose_2/BiasAdd:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( В
leaky_re_lu_9/LeakyRelu	LeakyRelu*batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:           Аm
conv2d_transpose_3/ShapeShape%leaky_re_lu_9/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@ш
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╖
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype0в
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0%leaky_re_lu_9/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@@*
paddingSAME*
strides
Ш
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0└
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@@О
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype0░
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0┤
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0┴
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3#conv2d_transpose_3/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @@@:@:@:@:@:*
epsilon%ЯЁ'7*
is_training( В
leaky_re_lu_10/LeakyRelu	LeakyRelu*batch_normalization_7/FusedBatchNormV3:y:0*/
_output_shapes
:         @@@n
conv2d_transpose_4/ShapeShape&leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ш
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╢
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0г
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_10/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @@*
paddingSAME*
strides
Ш
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0└
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@v
activation/TanhTanh#conv2d_transpose_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@j
IdentityIdentityactivation/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         @@Ё

NoOpNoOp6^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ь
О
+__inference_sequential_1_layer_call_fn_6004
dense_3_input
unknown:	dА@
	unknown_0:	А@%
	unknown_1:АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А
	unknown_5:	А
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А

unknown_10:	А

unknown_11:	А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А%

unknown_19:@А

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@$

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5884w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:         d
'
_user_specified_namedense_3_input
┌
Ю
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8031

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╩
H
,__inference_leaky_re_lu_8_layer_call_fn_7940

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_5576i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ц	
╙
4__inference_batch_normalization_5_layer_call_fn_7899

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5219К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
УU
╪
F__inference_sequential_1_layer_call_and_return_conditional_losses_5633

inputs
dense_3_5508:	dА@
dense_3_5510:	А@1
conv2d_transpose_5536:АА$
conv2d_transpose_5538:	А)
batch_normalization_4_5541:	А)
batch_normalization_4_5543:	А)
batch_normalization_4_5545:	А)
batch_normalization_4_5547:	А3
conv2d_transpose_1_5557:АА&
conv2d_transpose_1_5559:	А)
batch_normalization_5_5562:	А)
batch_normalization_5_5564:	А)
batch_normalization_5_5566:	А)
batch_normalization_5_5568:	А3
conv2d_transpose_2_5578:АА&
conv2d_transpose_2_5580:	А)
batch_normalization_6_5583:	А)
batch_normalization_6_5585:	А)
batch_normalization_6_5587:	А)
batch_normalization_6_5589:	А2
conv2d_transpose_3_5599:@А%
conv2d_transpose_3_5601:@(
batch_normalization_7_5604:@(
batch_normalization_7_5606:@(
batch_normalization_7_5608:@(
batch_normalization_7_5610:@1
conv2d_transpose_4_5620:@%
conv2d_transpose_4_5622:
identityИв-batch_normalization_4/StatefulPartitionedCallв-batch_normalization_5/StatefulPartitionedCallв-batch_normalization_6/StatefulPartitionedCallв-batch_normalization_7/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallв*conv2d_transpose_2/StatefulPartitionedCallв*conv2d_transpose_3/StatefulPartitionedCallв*conv2d_transpose_4/StatefulPartitionedCallвdense_3/StatefulPartitionedCallъ
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_5508dense_3_5510*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_5507ц
leaky_re_lu_6/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5518р
reshape/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_5534░
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_5536conv2d_transpose_5538*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5051С
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_4_5541batch_normalization_4_5543batch_normalization_4_5545batch_normalization_4_5547*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5080№
leaky_re_lu_7/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_5555╛
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_7/PartitionedCall:output:0conv2d_transpose_1_5557conv2d_transpose_1_5559*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5159У
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_5_5562batch_normalization_5_5564batch_normalization_5_5566batch_normalization_5_5568*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5188№
leaky_re_lu_8/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_5576╛
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_transpose_2_5578conv2d_transpose_2_5580*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5267У
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_6_5583batch_normalization_6_5585batch_normalization_6_5587batch_normalization_6_5589*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5296№
leaky_re_lu_9/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_5597╜
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_transpose_3_5599conv2d_transpose_3_5601*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5375Т
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_7_5604batch_normalization_7_5606batch_normalization_7_5608batch_normalization_7_5610*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5404¤
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_5618╛
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_transpose_4_5620conv2d_transpose_4_5622*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5483Є
activation/PartitionedCallPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_5630z
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@З
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:         d: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╩
Ъ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5404

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%ЯЁ'7*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Є
d
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8173

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @@@g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         @@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@@:W S
/
_output_shapes
:         @@@
 
_user_specified_nameinputs
═
]
A__inference_reshape_layer_call_and_return_conditional_losses_5534

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ай
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         Аa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А@:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
Ф
┬
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5111

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%ЯЁ'7*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╩
H
,__inference_leaky_re_lu_9_layer_call_fn_8054

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_5597i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:           А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:           А:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
├
Х
&__inference_dense_3_layer_call_fn_7678

inputs
unknown:	dА@
	unknown_0:	А@
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_5507p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ї
c
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_7831

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         Аh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╖
serving_defaultг
;
input_20
serving_default_input_2:0         dH
sequential_18
StatefulPartitionedCall:0         @@tensorflow/serving/predict:Ц█
Ч
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Т
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
layer-8
layer_with_weights-5
layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer-16
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ў
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27"
trackable_list_wrapper
╢
#0
$1
%2
&3
'4
(5
+6
,7
-8
.9
110
211
312
413
714
815
916
:17
=18
>19"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
═
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32т
&__inference_model_1_layer_call_fn_6282
&__inference_model_1_layer_call_fn_6778
&__inference_model_1_layer_call_fn_6839
&__inference_model_1_layer_call_fn_6526┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
╣
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32╬
A__inference_model_1_layer_call_and_return_conditional_losses_7016
A__inference_model_1_layer_call_and_return_conditional_losses_7193
A__inference_model_1_layer_call_and_return_conditional_losses_6587
A__inference_model_1_layer_call_and_return_conditional_losses_6648┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
╩B╟
__inference__wrapped_model_5014input_2"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
у
Liter

Mbeta_1

Nbeta_2
	Odecay
Plearning_rate#m╥$m╙%m╘&m╒'m╓(m╫+m╪,m┘-m┌.m█1m▄2m▌3m▐4m▀7mр8mс9mт:mу=mф>mх#vц$vч%vш&vщ'vъ(vы+vь,vэ-vю.vя1vЁ2vё3vЄ4vє7vЇ8vї9vЎ:vў=v°>v∙"
	optimizer
,
Qserving_default"
signature_map
╗
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
е
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
е
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

%kernel
&bias
 j_jit_compiled_convolution_op"
_tf_keras_layer
ъ
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	'gamma
(beta
)moving_mean
*moving_variance"
_tf_keras_layer
е
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

+kernel
,bias
 ~_jit_compiled_convolution_op"
_tf_keras_layer
Ё
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses
	Еaxis
	-gamma
.beta
/moving_mean
0moving_variance"
_tf_keras_layer
л
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses

1kernel
2bias
!Т_jit_compiled_convolution_op"
_tf_keras_layer
ё
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
	Щaxis
	3gamma
4beta
5moving_mean
6moving_variance"
_tf_keras_layer
л
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

7kernel
8bias
!ж_jit_compiled_convolution_op"
_tf_keras_layer
ё
з	variables
иtrainable_variables
йregularization_losses
к	keras_api
л__call__
+м&call_and_return_all_conditional_losses
	нaxis
	9gamma
:beta
;moving_mean
<moving_variance"
_tf_keras_layer
л
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
┤	variables
╡trainable_variables
╢regularization_losses
╖	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses

=kernel
>bias
!║_jit_compiled_convolution_op"
_tf_keras_layer
л
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"
_tf_keras_layer
Ў
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821
922
:23
;24
<25
=26
>27"
trackable_list_wrapper
╢
#0
$1
%2
&3
'4
(5
+6
,7
-8
.9
110
211
312
413
714
815
916
:17
=18
>19"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
щ
╞trace_0
╟trace_1
╚trace_2
╔trace_32Ў
+__inference_sequential_1_layer_call_fn_5692
+__inference_sequential_1_layer_call_fn_7254
+__inference_sequential_1_layer_call_fn_7315
+__inference_sequential_1_layer_call_fn_6004┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0z╟trace_1z╚trace_2z╔trace_3
╒
╩trace_0
╦trace_1
╠trace_2
═trace_32т
F__inference_sequential_1_layer_call_and_return_conditional_losses_7492
F__inference_sequential_1_layer_call_and_return_conditional_losses_7669
F__inference_sequential_1_layer_call_and_return_conditional_losses_6081
F__inference_sequential_1_layer_call_and_return_conditional_losses_6158┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╩trace_0z╦trace_1z╠trace_2z═trace_3
!:	dА@2dense_3/kernel
:А@2dense_3/bias
3:1АА2conv2d_transpose/kernel
$:"А2conv2d_transpose/bias
*:(А2batch_normalization_4/gamma
):'А2batch_normalization_4/beta
2:0А (2!batch_normalization_4/moving_mean
6:4А (2%batch_normalization_4/moving_variance
5:3АА2conv2d_transpose_1/kernel
&:$А2conv2d_transpose_1/bias
*:(А2batch_normalization_5/gamma
):'А2batch_normalization_5/beta
2:0А (2!batch_normalization_5/moving_mean
6:4А (2%batch_normalization_5/moving_variance
5:3АА2conv2d_transpose_2/kernel
&:$А2conv2d_transpose_2/bias
*:(А2batch_normalization_6/gamma
):'А2batch_normalization_6/beta
2:0А (2!batch_normalization_6/moving_mean
6:4А (2%batch_normalization_6/moving_variance
4:2@А2conv2d_transpose_3/kernel
%:#@2conv2d_transpose_3/bias
):'@2batch_normalization_7/gamma
(:&@2batch_normalization_7/beta
1:/@ (2!batch_normalization_7/moving_mean
5:3@ (2%batch_normalization_7/moving_variance
3:1@2conv2d_transpose_4/kernel
%:#2conv2d_transpose_4/bias
X
)0
*1
/2
03
54
65
;6
<7"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
╬0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
°Bї
&__inference_model_1_layer_call_fn_6282input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
&__inference_model_1_layer_call_fn_6778inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
&__inference_model_1_layer_call_fn_6839inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
&__inference_model_1_layer_call_fn_6526input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
A__inference_model_1_layer_call_and_return_conditional_losses_7016inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
A__inference_model_1_layer_call_and_return_conditional_losses_7193inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
A__inference_model_1_layer_call_and_return_conditional_losses_6587input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
A__inference_model_1_layer_call_and_return_conditional_losses_6648input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╔B╞
"__inference_signature_wrapper_6717input_2"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ь
╘trace_02═
&__inference_dense_3_layer_call_fn_7678в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
З
╒trace_02ш
A__inference_dense_3_layer_call_and_return_conditional_losses_7688в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╒trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
Є
█trace_02╙
,__inference_leaky_re_lu_6_layer_call_fn_7693в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
Н
▄trace_02ю
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_7698в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
ь
тtrace_02═
&__inference_reshape_layer_call_fn_7703в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
З
уtrace_02ш
A__inference_reshape_layer_call_and_return_conditional_losses_7717в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
ї
щtrace_02╓
/__inference_conv2d_transpose_layer_call_fn_7726в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0
Р
ъtrace_02ё
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_7759в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zъtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
'0
(1
)2
*3"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
▌
Ёtrace_0
ёtrace_12в
4__inference_batch_normalization_4_layer_call_fn_7772
4__inference_batch_normalization_4_layer_call_fn_7785│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0zёtrace_1
У
Єtrace_0
єtrace_12╪
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7803
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7821│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0zєtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
Є
∙trace_02╙
,__inference_leaky_re_lu_7_layer_call_fn_7826в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
Н
·trace_02ю
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_7831в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z·trace_0
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
ў
Аtrace_02╪
1__inference_conv2d_transpose_1_layer_call_fn_7840в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
Т
Бtrace_02є
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_7873в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
-0
.1
/2
03"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
╖
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
▌
Зtrace_0
Иtrace_12в
4__inference_batch_normalization_5_layer_call_fn_7886
4__inference_batch_normalization_5_layer_call_fn_7899│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0zИtrace_1
У
Йtrace_0
Кtrace_12╪
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7917
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7935│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0zКtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
Є
Рtrace_02╙
,__inference_leaky_re_lu_8_layer_call_fn_7940в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
Н
Сtrace_02ю
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_7945в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zСtrace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
ў
Чtrace_02╪
1__inference_conv2d_transpose_2_layer_call_fn_7954в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0
Т
Шtrace_02є
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_7987в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zШtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
30
41
52
63"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
▌
Юtrace_0
Яtrace_12в
4__inference_batch_normalization_6_layer_call_fn_8000
4__inference_batch_normalization_6_layer_call_fn_8013│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЮtrace_0zЯtrace_1
У
аtrace_0
бtrace_12╪
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8031
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8049│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0zбtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
Є
зtrace_02╙
,__inference_leaky_re_lu_9_layer_call_fn_8054в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0
Н
иtrace_02ю
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8059в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
ў
оtrace_02╪
1__inference_conv2d_transpose_3_layer_call_fn_8068в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zоtrace_0
Т
пtrace_02є
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_8101в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
90
:1
;2
<3"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
з	variables
иtrainable_variables
йregularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
▌
╡trace_0
╢trace_12в
4__inference_batch_normalization_7_layer_call_fn_8114
4__inference_batch_normalization_7_layer_call_fn_8127│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╡trace_0z╢trace_1
У
╖trace_0
╕trace_12╪
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8145
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8163│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0z╕trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
є
╛trace_02╘
-__inference_leaky_re_lu_10_layer_call_fn_8168в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
О
┐trace_02я
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8173в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
┤	variables
╡trainable_variables
╢regularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
ў
┼trace_02╪
1__inference_conv2d_transpose_4_layer_call_fn_8182в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┼trace_0
Т
╞trace_02є
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_8215в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
я
╠trace_02╨
)__inference_activation_layer_call_fn_8220в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╠trace_0
К
═trace_02ы
D__inference_activation_layer_call_and_return_conditional_losses_8225в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0
X
)0
*1
/2
03
54
65
;6
<7"
trackable_list_wrapper
Ю
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
+__inference_sequential_1_layer_call_fn_5692dense_3_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
+__inference_sequential_1_layer_call_fn_7254inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
+__inference_sequential_1_layer_call_fn_7315inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
+__inference_sequential_1_layer_call_fn_6004dense_3_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
F__inference_sequential_1_layer_call_and_return_conditional_losses_7492inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
F__inference_sequential_1_layer_call_and_return_conditional_losses_7669inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
F__inference_sequential_1_layer_call_and_return_conditional_losses_6081dense_3_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
F__inference_sequential_1_layer_call_and_return_conditional_losses_6158dense_3_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
╬	variables
╧	keras_api

╨total

╤count"
_tf_keras_metric
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
┌B╫
&__inference_dense_3_layer_call_fn_7678inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_dense_3_layer_call_and_return_conditional_losses_7688inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
рB▌
,__inference_leaky_re_lu_6_layer_call_fn_7693inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_7698inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
&__inference_reshape_layer_call_fn_7703inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_reshape_layer_call_and_return_conditional_losses_7717inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
уBр
/__inference_conv2d_transpose_layer_call_fn_7726inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_7759inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∙BЎ
4__inference_batch_normalization_4_layer_call_fn_7772inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
4__inference_batch_normalization_4_layer_call_fn_7785inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7803inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7821inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
рB▌
,__inference_leaky_re_lu_7_layer_call_fn_7826inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_7831inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
хBт
1__inference_conv2d_transpose_1_layer_call_fn_7840inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_7873inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∙BЎ
4__inference_batch_normalization_5_layer_call_fn_7886inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
4__inference_batch_normalization_5_layer_call_fn_7899inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7917inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7935inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
рB▌
,__inference_leaky_re_lu_8_layer_call_fn_7940inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_7945inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
хBт
1__inference_conv2d_transpose_2_layer_call_fn_7954inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_7987inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∙BЎ
4__inference_batch_normalization_6_layer_call_fn_8000inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
4__inference_batch_normalization_6_layer_call_fn_8013inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8031inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8049inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
рB▌
,__inference_leaky_re_lu_9_layer_call_fn_8054inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8059inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
хBт
1__inference_conv2d_transpose_3_layer_call_fn_8068inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_8101inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∙BЎ
4__inference_batch_normalization_7_layer_call_fn_8114inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
4__inference_batch_normalization_7_layer_call_fn_8127inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8145inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8163inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
сB▐
-__inference_leaky_re_lu_10_layer_call_fn_8168inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8173inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
хBт
1__inference_conv2d_transpose_4_layer_call_fn_8182inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_8215inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_activation_layer_call_fn_8220inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_activation_layer_call_and_return_conditional_losses_8225inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
╨0
╤1"
trackable_list_wrapper
.
╬	variables"
_generic_user_object
:  (2total
:  (2count
&:$	dА@2Adam/dense_3/kernel/m
 :А@2Adam/dense_3/bias/m
8:6АА2Adam/conv2d_transpose/kernel/m
):'А2Adam/conv2d_transpose/bias/m
/:-А2"Adam/batch_normalization_4/gamma/m
.:,А2!Adam/batch_normalization_4/beta/m
::8АА2 Adam/conv2d_transpose_1/kernel/m
+:)А2Adam/conv2d_transpose_1/bias/m
/:-А2"Adam/batch_normalization_5/gamma/m
.:,А2!Adam/batch_normalization_5/beta/m
::8АА2 Adam/conv2d_transpose_2/kernel/m
+:)А2Adam/conv2d_transpose_2/bias/m
/:-А2"Adam/batch_normalization_6/gamma/m
.:,А2!Adam/batch_normalization_6/beta/m
9:7@А2 Adam/conv2d_transpose_3/kernel/m
*:(@2Adam/conv2d_transpose_3/bias/m
.:,@2"Adam/batch_normalization_7/gamma/m
-:+@2!Adam/batch_normalization_7/beta/m
8:6@2 Adam/conv2d_transpose_4/kernel/m
*:(2Adam/conv2d_transpose_4/bias/m
&:$	dА@2Adam/dense_3/kernel/v
 :А@2Adam/dense_3/bias/v
8:6АА2Adam/conv2d_transpose/kernel/v
):'А2Adam/conv2d_transpose/bias/v
/:-А2"Adam/batch_normalization_4/gamma/v
.:,А2!Adam/batch_normalization_4/beta/v
::8АА2 Adam/conv2d_transpose_1/kernel/v
+:)А2Adam/conv2d_transpose_1/bias/v
/:-А2"Adam/batch_normalization_5/gamma/v
.:,А2!Adam/batch_normalization_5/beta/v
::8АА2 Adam/conv2d_transpose_2/kernel/v
+:)А2Adam/conv2d_transpose_2/bias/v
/:-А2"Adam/batch_normalization_6/gamma/v
.:,А2!Adam/batch_normalization_6/beta/v
9:7@А2 Adam/conv2d_transpose_3/kernel/v
*:(@2Adam/conv2d_transpose_3/bias/v
.:,@2"Adam/batch_normalization_7/gamma/v
-:+@2!Adam/batch_normalization_7/beta/v
8:6@2 Adam/conv2d_transpose_4/kernel/v
*:(2Adam/conv2d_transpose_4/bias/v╣
__inference__wrapped_model_5014Х#$%&'()*+,-./0123456789:;<=>0в-
&в#
!К
input_2         d
к "Cк@
>
sequential_1.К+
sequential_1         @@░
D__inference_activation_layer_call_and_return_conditional_losses_8225h7в4
-в*
(К%
inputs         @@
к "-в*
#К 
0         @@
Ъ И
)__inference_activation_layer_call_fn_8220[7в4
-в*
(К%
inputs         @@
к " К         @@ь
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7803Ш'()*NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ь
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_7821Ш'()*NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ─
4__inference_batch_normalization_4_layer_call_fn_7772Л'()*NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А─
4__inference_batch_normalization_4_layer_call_fn_7785Л'()*NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аь
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7917Ш-./0NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ь
O__inference_batch_normalization_5_layer_call_and_return_conditional_losses_7935Ш-./0NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ─
4__inference_batch_normalization_5_layer_call_fn_7886Л-./0NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А─
4__inference_batch_normalization_5_layer_call_fn_7899Л-./0NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аь
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8031Ш3456NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ь
O__inference_batch_normalization_6_layer_call_and_return_conditional_losses_8049Ш3456NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ─
4__inference_batch_normalization_6_layer_call_fn_8000Л3456NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А─
4__inference_batch_normalization_6_layer_call_fn_8013Л3456NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аъ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8145Ц9:;<MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ъ
O__inference_batch_normalization_7_layer_call_and_return_conditional_losses_8163Ц9:;<MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ┬
4__inference_batch_normalization_7_layer_call_fn_8114Й9:;<MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @┬
4__inference_batch_normalization_7_layer_call_fn_8127Й9:;<MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @у
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_7873Т+,JвG
@в=
;К8
inputs,                           А
к "@в=
6К3
0,                           А
Ъ ╗
1__inference_conv2d_transpose_1_layer_call_fn_7840Е+,JвG
@в=
;К8
inputs,                           А
к "3К0,                           Ау
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_7987Т12JвG
@в=
;К8
inputs,                           А
к "@в=
6К3
0,                           А
Ъ ╗
1__inference_conv2d_transpose_2_layer_call_fn_7954Е12JвG
@в=
;К8
inputs,                           А
к "3К0,                           Ат
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_8101С78JвG
@в=
;К8
inputs,                           А
к "?в<
5К2
0+                           @
Ъ ║
1__inference_conv2d_transpose_3_layer_call_fn_8068Д78JвG
@в=
;К8
inputs,                           А
к "2К/+                           @с
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_8215Р=>IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           
Ъ ╣
1__inference_conv2d_transpose_4_layer_call_fn_8182Г=>IвF
?в<
:К7
inputs+                           @
к "2К/+                           с
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_7759Т%&JвG
@в=
;К8
inputs,                           А
к "@в=
6К3
0,                           А
Ъ ╣
/__inference_conv2d_transpose_layer_call_fn_7726Е%&JвG
@в=
;К8
inputs,                           А
к "3К0,                           Ав
A__inference_dense_3_layer_call_and_return_conditional_losses_7688]#$/в,
%в"
 К
inputs         d
к "&в#
К
0         А@
Ъ z
&__inference_dense_3_layer_call_fn_7678P#$/в,
%в"
 К
inputs         d
к "К         А@┤
H__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_8173h7в4
-в*
(К%
inputs         @@@
к "-в*
#К 
0         @@@
Ъ М
-__inference_leaky_re_lu_10_layer_call_fn_8168[7в4
-в*
(К%
inputs         @@@
к " К         @@@е
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_7698Z0в-
&в#
!К
inputs         А@
к "&в#
К
0         А@
Ъ }
,__inference_leaky_re_lu_6_layer_call_fn_7693M0в-
&в#
!К
inputs         А@
к "К         А@╡
G__inference_leaky_re_lu_7_layer_call_and_return_conditional_losses_7831j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Н
,__inference_leaky_re_lu_7_layer_call_fn_7826]8в5
.в+
)К&
inputs         А
к "!К         А╡
G__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_7945j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Н
,__inference_leaky_re_lu_8_layer_call_fn_7940]8в5
.в+
)К&
inputs         А
к "!К         А╡
G__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_8059j8в5
.в+
)К&
inputs           А
к ".в+
$К!
0           А
Ъ Н
,__inference_leaky_re_lu_9_layer_call_fn_8054]8в5
.в+
)К&
inputs           А
к "!К           А═
A__inference_model_1_layer_call_and_return_conditional_losses_6587З#$%&'()*+,-./0123456789:;<=>8в5
.в+
!К
input_2         d
p 

 
к "-в*
#К 
0         @@
Ъ ═
A__inference_model_1_layer_call_and_return_conditional_losses_6648З#$%&'()*+,-./0123456789:;<=>8в5
.в+
!К
input_2         d
p

 
к "-в*
#К 
0         @@
Ъ ╠
A__inference_model_1_layer_call_and_return_conditional_losses_7016Ж#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p 

 
к "-в*
#К 
0         @@
Ъ ╠
A__inference_model_1_layer_call_and_return_conditional_losses_7193Ж#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p

 
к "-в*
#К 
0         @@
Ъ д
&__inference_model_1_layer_call_fn_6282z#$%&'()*+,-./0123456789:;<=>8в5
.в+
!К
input_2         d
p 

 
к " К         @@д
&__inference_model_1_layer_call_fn_6526z#$%&'()*+,-./0123456789:;<=>8в5
.в+
!К
input_2         d
p

 
к " К         @@г
&__inference_model_1_layer_call_fn_6778y#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p 

 
к " К         @@г
&__inference_model_1_layer_call_fn_6839y#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p

 
к " К         @@з
A__inference_reshape_layer_call_and_return_conditional_losses_7717b0в-
&в#
!К
inputs         А@
к ".в+
$К!
0         А
Ъ 
&__inference_reshape_layer_call_fn_7703U0в-
&в#
!К
inputs         А@
к "!К         А╪
F__inference_sequential_1_layer_call_and_return_conditional_losses_6081Н#$%&'()*+,-./0123456789:;<=>>в;
4в1
'К$
dense_3_input         d
p 

 
к "-в*
#К 
0         @@
Ъ ╪
F__inference_sequential_1_layer_call_and_return_conditional_losses_6158Н#$%&'()*+,-./0123456789:;<=>>в;
4в1
'К$
dense_3_input         d
p

 
к "-в*
#К 
0         @@
Ъ ╤
F__inference_sequential_1_layer_call_and_return_conditional_losses_7492Ж#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p 

 
к "-в*
#К 
0         @@
Ъ ╤
F__inference_sequential_1_layer_call_and_return_conditional_losses_7669Ж#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p

 
к "-в*
#К 
0         @@
Ъ ░
+__inference_sequential_1_layer_call_fn_5692А#$%&'()*+,-./0123456789:;<=>>в;
4в1
'К$
dense_3_input         d
p 

 
к " К         @@░
+__inference_sequential_1_layer_call_fn_6004А#$%&'()*+,-./0123456789:;<=>>в;
4в1
'К$
dense_3_input         d
p

 
к " К         @@и
+__inference_sequential_1_layer_call_fn_7254y#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p 

 
к " К         @@и
+__inference_sequential_1_layer_call_fn_7315y#$%&'()*+,-./0123456789:;<=>7в4
-в*
 К
inputs         d
p

 
к " К         @@╟
"__inference_signature_wrapper_6717а#$%&'()*+,-./0123456789:;<=>;в8
в 
1к.
,
input_2!К
input_2         d"Cк@
>
sequential_1.К+
sequential_1         @@