
package Paws::WorkMail::DeleteOrganization;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeleteDirectory => (is => 'ro', isa => 'Bool', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteOrganization - Arguments for method DeleteOrganization on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteOrganization on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteOrganization.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteOrganizationResponse = $workmail->DeleteOrganization(
      DeleteDirectory => 1,
      OrganizationId  => 'MyOrganizationId',
      ClientToken     => 'MyIdempotencyClientToken',    # OPTIONAL
    );

    # Results:
    my $OrganizationId = $DeleteOrganizationResponse->OrganizationId;
    my $State          = $DeleteOrganizationResponse->State;

    # Returns a L<Paws::WorkMail::DeleteOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteOrganization>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token associated with the request.



=head2 B<REQUIRED> DeleteDirectory => Bool

If true, deletes the AWS Directory Service directory associated with
the organization.



=head2 B<REQUIRED> OrganizationId => Str

The organization ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteOrganization in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

