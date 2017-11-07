package Paws::Firehose::Processor;
  use Moose;
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::Firehose::ProcessorParameter]');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::Processor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::Processor object:

  $service_obj->Method(Att1 => { Parameters => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::Processor object:

  $result = $service_obj->Method(...);
  $result->Att1->Parameters

=head1 DESCRIPTION

Describes a data processor.

=head1 ATTRIBUTES


=head2 Parameters => ArrayRef[L<Paws::Firehose::ProcessorParameter>]

  The processor parameters.


=head2 B<REQUIRED> Type => Str

  The type of processor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

