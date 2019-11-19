
package Paws::Connect::GetFederationToken;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw//;
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetFederationToken');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/user/federate/{InstanceId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Connect::GetFederationTokenResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'InstanceId' => 1
                  },
  'ParamInURI' => {
                    'InstanceId' => 'InstanceId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetFederationToken - Arguments for method GetFederationToken on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFederationToken on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetFederationToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFederationToken.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetFederationTokenResponse = $connect->GetFederationToken(
      InstanceId => 'MyInstanceId',

    );

    # Results:
    my $Credentials = $GetFederationTokenResponse->Credentials;

    # Returns a L<Paws::Connect::GetFederationTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetFederationToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFederationToken in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

