
package Paws::Config::GetComplianceDetailsByResource;
  use Moose;
  has ComplianceTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComplianceDetailsByResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetComplianceDetailsByResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceDetailsByResource - Arguments for method GetComplianceDetailsByResource on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComplianceDetailsByResource on the 
AWS Config service. Use the attributes of this class
as arguments to method GetComplianceDetailsByResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComplianceDetailsByResource.

As an example:

  $service_obj->GetComplianceDetailsByResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 ComplianceTypes => ArrayRef[Str]

  Specify to filter the results by compliance. The valid values are
C<Compliant>, C<NonCompliant>, and C<NotApplicable>.

=head2 NextToken => Str

  The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.

=head2 B<REQUIRED> ResourceId => Str

  The ID of the AWS resource for which you want compliance information.

=head2 B<REQUIRED> ResourceType => Str

  The type of the AWS resource for which you want compliance information.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComplianceDetailsByResource in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

