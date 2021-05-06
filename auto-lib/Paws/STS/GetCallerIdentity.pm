
package Paws::STS::GetCallerIdentity;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCallerIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::STS::GetCallerIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetCallerIdentityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::GetCallerIdentity - Arguments for method GetCallerIdentity on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCallerIdentity on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method GetCallerIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCallerIdentity.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    # To get details about a calling IAM user
    # This example shows a request and response made with the credentials for a
    # user named Alice in the AWS account 123456789012.
    my $GetCallerIdentityResponse = $sts->GetCallerIdentity();

    # Results:
    my $Account = $GetCallerIdentityResponse->Account;
    my $Arn     = $GetCallerIdentityResponse->Arn;
    my $UserId  = $GetCallerIdentityResponse->UserId;

    # Returns a L<Paws::STS::GetCallerIdentityResponse> object.
    # To get details about a calling user federated with AssumeRole
    # This example shows a request and response made with temporary credentials
    # created by AssumeRole. The name of the assumed role is my-role-name, and
    # the RoleSessionName is set to my-role-session-name.
    my $GetCallerIdentityResponse = $sts->GetCallerIdentity();

    # Results:
    my $Account = $GetCallerIdentityResponse->Account;
    my $Arn     = $GetCallerIdentityResponse->Arn;
    my $UserId  = $GetCallerIdentityResponse->UserId;

    # Returns a L<Paws::STS::GetCallerIdentityResponse> object.
    # To get details about a calling user federated with GetFederationToken
    # This example shows a request and response made with temporary credentials
    # created by using GetFederationToken. The Name parameter is set to
    # my-federated-user-name.
    my $GetCallerIdentityResponse = $sts->GetCallerIdentity();

    # Results:
    my $Account = $GetCallerIdentityResponse->Account;
    my $Arn     = $GetCallerIdentityResponse->Arn;
    my $UserId  = $GetCallerIdentityResponse->UserId;

    # Returns a L<Paws::STS::GetCallerIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/GetCallerIdentity>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCallerIdentity in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

