package Paws::Firehose::ProcessingConfiguration;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has Processors => (is => 'ro', isa => 'ArrayRef[Paws::Firehose::Processor]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ProcessingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ProcessingConfiguration object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Processors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ProcessingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Describes a data processing configuration.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Enables or disables data processing.


=head2 Processors => ArrayRef[L<Paws::Firehose::Processor>]

  The data processors.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

