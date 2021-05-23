
package Paws::ECRPublic::GetAuthorizationToken;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAuthorizationToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::GetAuthorizationTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::GetAuthorizationToken - Arguments for method GetAuthorizationToken on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAuthorizationToken on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method GetAuthorizationToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAuthorizationToken.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $GetAuthorizationTokenResponse =
      $api . ecr-public->GetAuthorizationToken();

    # Results:
    my $AuthorizationData = $GetAuthorizationTokenResponse->AuthorizationData;

    # Returns a L<Paws::ECRPublic::GetAuthorizationTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/GetAuthorizationToken>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAuthorizationToken in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

