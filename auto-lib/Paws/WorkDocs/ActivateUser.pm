
package Paws::WorkDocs::ActivateUser;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UserId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/users/{UserId}/activation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::ActivateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::ActivateUser - Arguments for method ActivateUser on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateUser on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method ActivateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateUser.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $ActivateUserResponse = $workdocs->ActivateUser(
      UserId              => 'MyIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
    );

    # Results:
    my $User = $ActivateUserResponse->User;

    # Returns a L<Paws::WorkDocs::ActivateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/ActivateUser>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> UserId => Str

The ID of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateUser in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

