
package Paws::Inspector::ListAttachedRulesPackages;
  use Moose;
  has AssessmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentArn' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttachedRulesPackages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::ListAttachedRulesPackagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAttachedRulesPackages - Arguments for method ListAttachedRulesPackages on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttachedRulesPackages on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method ListAttachedRulesPackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttachedRulesPackages.

As an example:

  $service_obj->ListAttachedRulesPackages(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AssessmentArn => Str

  The ARN specifying the assessment whose rules packages you want to
list.


=head2 MaxResults => Int

  You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 10. The maximum value is
500.


=head2 NextToken => Str

  You can use this parameter when paginating results. Set the value of
this parameter to 'null' on your first call to the
B<ListAttachedRulesPackages> action. Subsequent calls to the action
fill B<nextToken> in the request with the value of B<NextToken> from
previous response to continue listing data.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttachedRulesPackages in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

