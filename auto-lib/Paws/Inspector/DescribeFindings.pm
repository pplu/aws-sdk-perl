
package Paws::Inspector::DescribeFindings;
  use Moose;
  has FindingArns => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'findingArns' , required => 1);
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFindings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeFindingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeFindings - Arguments for method DescribeFindings on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFindings on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method DescribeFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFindings.

As an example:

  $service_obj->DescribeFindings(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingArns => ArrayRef[Str]

The ARN(s) specifying the finding(s) that you want to describe.



=head2 Locale => Str

The locale that you want to translate a finding description(s),
recommendation(s), and the short description(s) that identify the
finding(s) into.

Valid values are: C<"EN_US">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFindings in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

