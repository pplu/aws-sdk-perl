
package Paws::RedShift::DescribeAccountAttributes;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::AccountAttributeList');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeAccountAttributes - Arguments for method DescribeAccountAttributes on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountAttributes on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeAccountAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountAttributes.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $AccountAttributeList = $redshift->DescribeAccountAttributes(
      AttributeNames => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $AccountAttributes = $AccountAttributeList->AccountAttributes;

    # Returns a L<Paws::RedShift::AccountAttributeList> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeAccountAttributes>

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

A list of attribute names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountAttributes in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

