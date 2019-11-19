
package Paws::Signer::ListSigningProfiles;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::Signer::Types qw//;
  has IncludeCanceled => (is => 'ro', isa => Bool, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListSigningProfiles');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/signing-profiles');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Signer::ListSigningProfilesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'IncludeCanceled' => {
                                      'type' => 'Bool'
                                    }
             },
  'ParamInQuery' => {
                      'IncludeCanceled' => 'includeCanceled',
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningProfiles - Arguments for method ListSigningProfiles on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSigningProfiles on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method ListSigningProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSigningProfiles.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $ListSigningProfilesResponse = $signer->ListSigningProfiles(
      IncludeCanceled => 1,                # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSigningProfilesResponse->NextToken;
    my $Profiles  = $ListSigningProfilesResponse->Profiles;

    # Returns a L<Paws::Signer::ListSigningProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/ListSigningProfiles>

=head1 ATTRIBUTES


=head2 IncludeCanceled => Bool

Designates whether to include profiles with the status of C<CANCELED>.



=head2 MaxResults => Int

The maximum number of profiles to be returned.



=head2 NextToken => Str

Value for specifying the next set of paginated results to return. After
you receive a response with truncated results, use this parameter in a
subsequent request. Set it to the value of C<nextToken> from the
response that you just received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSigningProfiles in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

