
package Paws::Inspector::DescribeRulesPackages;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );
  has RulesPackageArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'rulesPackageArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRulesPackages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeRulesPackagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeRulesPackages - Arguments for method DescribeRulesPackages on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRulesPackages on the 
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method DescribeRulesPackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRulesPackages.

As an example:

  $service_obj->DescribeRulesPackages(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Locale => Str

The locale that you want to translate a rules package description into.

Valid values are: C<"EN_US">

=head2 B<REQUIRED> RulesPackageArns => ArrayRef[Str|Undef]

The ARN that specifies the rules package that you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRulesPackages in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

