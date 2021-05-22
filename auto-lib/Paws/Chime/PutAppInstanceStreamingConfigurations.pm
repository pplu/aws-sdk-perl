
package Paws::Chime::PutAppInstanceStreamingConfigurations;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);
  has AppInstanceStreamingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Chime::AppInstanceStreamingConfiguration]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAppInstanceStreamingConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/streaming-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::PutAppInstanceStreamingConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutAppInstanceStreamingConfigurations - Arguments for method PutAppInstanceStreamingConfigurations on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAppInstanceStreamingConfigurations on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method PutAppInstanceStreamingConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAppInstanceStreamingConfigurations.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $PutAppInstanceStreamingConfigurationsResponse =
      $chime->PutAppInstanceStreamingConfigurations(
      AppInstanceArn                     => 'MyChimeArn',
      AppInstanceStreamingConfigurations => [
        {
          AppInstanceDataType => 'Channel',    # values: Channel, ChannelMessage
          ResourceArn         => 'MyArn',      # min: 1, max: 1024

        },
        ...
      ],

      );

    # Results:
    my $AppInstanceStreamingConfigurations =
      $PutAppInstanceStreamingConfigurationsResponse
      ->AppInstanceStreamingConfigurations;

# Returns a L<Paws::Chime::PutAppInstanceStreamingConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/PutAppInstanceStreamingConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.



=head2 B<REQUIRED> AppInstanceStreamingConfigurations => ArrayRef[L<Paws::Chime::AppInstanceStreamingConfiguration>]

The streaming configurations set for an C<AppInstance>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAppInstanceStreamingConfigurations in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

