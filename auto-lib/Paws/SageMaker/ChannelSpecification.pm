package Paws::SageMaker::ChannelSpecification;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has IsRequired => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SupportedCompressionTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedContentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SupportedInputModes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ChannelSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ChannelSpecification object:

  $service_obj->Method(Att1 => { Description => $value, ..., SupportedInputModes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ChannelSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Defines a named input source, called a channel, to be used by an
algorithm.

=head1 ATTRIBUTES


=head2 Description => Str

  A brief description of the channel.


=head2 IsRequired => Bool

  Indicates whether the channel is required by the algorithm.


=head2 B<REQUIRED> Name => Str

  The name of the channel.


=head2 SupportedCompressionTypes => ArrayRef[Str|Undef]

  The allowed compression types, if data compression is used.


=head2 B<REQUIRED> SupportedContentTypes => ArrayRef[Str|Undef]

  The supported MIME types for the data.


=head2 B<REQUIRED> SupportedInputModes => ArrayRef[Str|Undef]

  The allowed input mode, either FILE or PIPE.

In FILE mode, Amazon SageMaker copies the data from the input source
onto the local Amazon Elastic Block Store (Amazon EBS) volumes before
starting your training algorithm. This is the most commonly used input
mode.

In PIPE mode, Amazon SageMaker streams input data from the source
directly to your algorithm without using the EBS volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

