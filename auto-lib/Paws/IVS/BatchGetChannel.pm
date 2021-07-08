
package Paws::IVS::BatchGetChannel;
  use Moose;
  has Arns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'arns', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchGetChannel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::BatchGetChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::BatchGetChannel - Arguments for method BatchGetChannel on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetChannel on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method BatchGetChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetChannel.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $BatchGetChannelResponse = $ivs->BatchGetChannel(
      Arns => [
        'MyChannelArn', ...    # min: 1, max: 128
      ],

    );

    # Results:
    my $Channels = $BatchGetChannelResponse->Channels;
    my $Errors   = $BatchGetChannelResponse->Errors;

    # Returns a L<Paws::IVS::BatchGetChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/BatchGetChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arns => ArrayRef[Str|Undef]

Array of ARNs, one per channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetChannel in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

