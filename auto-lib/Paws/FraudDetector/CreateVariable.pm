
package Paws::FraudDetector::CreateVariable;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSource' , required => 1);
  has DataType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataType' , required => 1);
  has DefaultValue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultValue' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has VariableType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'variableType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVariable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::CreateVariableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateVariable - Arguments for method CreateVariable on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVariable on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method CreateVariable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVariable.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $CreateVariableResult = $frauddetector->CreateVariable(
      DataSource   => 'EVENT',
      DataType     => 'STRING',
      DefaultValue => 'Mystring',
      Name         => 'Mystring',
      Description  => 'Mystring',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MytagKey',       # min: 1, max: 128
          Value => 'MytagValue',     # max: 256

        },
        ...
      ],                             # OPTIONAL
      VariableType => 'Mystring',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/CreateVariable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSource => Str

The source of the data.

Valid values are: C<"EVENT">, C<"MODEL_SCORE">, C<"EXTERNAL_MODEL_SCORE">

=head2 B<REQUIRED> DataType => Str

The data type.

Valid values are: C<"STRING">, C<"INTEGER">, C<"FLOAT">, C<"BOOLEAN">

=head2 B<REQUIRED> DefaultValue => Str

The default value for the variable when no value is received.



=head2 Description => Str

The description.



=head2 B<REQUIRED> Name => Str

The name of the variable.



=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of key and value pairs.



=head2 VariableType => Str

The variable type. For more information see Variable types
(https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types).

Valid Values: C<AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL |
CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME
| SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVariable in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

