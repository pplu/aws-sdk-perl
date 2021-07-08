
package Paws::IVS::ListChannels;
  use Moose;
  has FilterByName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByName');
  has FilterByRecordingConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByRecordingConfigurationArn');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListChannels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::ListChannelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListChannels - Arguments for method ListChannels on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannels on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method ListChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannels.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $ListChannelsResponse = $ivs->ListChannels(
      FilterByName                      => 'MyChannelName',    # OPTIONAL
      FilterByRecordingConfigurationArn =>
        'MyChannelRecordingConfigurationArn',                  # OPTIONAL
      MaxResults => 1,                                         # OPTIONAL
      NextToken  => 'MyPaginationToken',                       # OPTIONAL
    );

    # Results:
    my $Channels  = $ListChannelsResponse->Channels;
    my $NextToken = $ListChannelsResponse->NextToken;

    # Returns a L<Paws::IVS::ListChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/ListChannels>

=head1 ATTRIBUTES


=head2 FilterByName => Str

Filters the channel list to match the specified name.



=head2 FilterByRecordingConfigurationArn => Str

Filters the channel list to match the specified recording-configuration
ARN.



=head2 MaxResults => Int

Maximum number of channels to return. Default: 50.



=head2 NextToken => Str

The first channel to retrieve. This is used for pagination; see the
C<nextToken> response field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannels in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

