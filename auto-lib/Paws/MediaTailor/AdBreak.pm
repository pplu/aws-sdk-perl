# Generated by default/object.tt
package Paws::MediaTailor::AdBreak;
  use Moose;
  has MessageType => (is => 'ro', isa => 'Str');
  has OffsetMillis => (is => 'ro', isa => 'Int');
  has Slate => (is => 'ro', isa => 'Paws::MediaTailor::SlateSource');
  has SpliceInsertMessage => (is => 'ro', isa => 'Paws::MediaTailor::SpliceInsertMessage');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::AdBreak

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::AdBreak object:

  $service_obj->Method(Att1 => { MessageType => $value, ..., SpliceInsertMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::AdBreak object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageType

=head1 DESCRIPTION

Ad break configuration parameters.

=head1 ATTRIBUTES


=head2 MessageType => Str

The SCTE-35 ad insertion type. Accepted value: SPLICE_INSERT.


=head2 OffsetMillis => Int

How long (in milliseconds) after the beginning of the program that an
ad starts. This value must fall within 100ms of a segment boundary,
otherwise the ad break will be skipped.


=head2 Slate => L<Paws::MediaTailor::SlateSource>

Ad break slate configuration.


=head2 SpliceInsertMessage => L<Paws::MediaTailor::SpliceInsertMessage>

This defines the SCTE-35 splice_insert() message inserted around the
ad. For information about using splice_insert(), see the SCTE-35
specficiaiton, section 9.7.3.1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

