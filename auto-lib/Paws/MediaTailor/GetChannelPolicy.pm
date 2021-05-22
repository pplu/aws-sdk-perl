
package Paws::MediaTailor::GetChannelPolicy;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChannelPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{channelName}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::GetChannelPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::GetChannelPolicy - Arguments for method GetChannelPolicy on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChannelPolicy on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method GetChannelPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChannelPolicy.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $GetChannelPolicyResponse = $api . mediatailor->GetChannelPolicy(
      ChannelName => 'My__string',

    );

    # Results:
    my $Policy = $GetChannelPolicyResponse->Policy;

    # Returns a L<Paws::MediaTailor::GetChannelPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/GetChannelPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The identifier for the channel you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChannelPolicy in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

