package Paws::SSM::OpsEntityItem;
  use Moose;
  has CaptureTime => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsEntityItemEntry]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OpsEntityItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OpsEntityItem object:

  $service_obj->Method(Att1 => { CaptureTime => $value, ..., Content => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsEntityItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptureTime

=head1 DESCRIPTION

The OpsItem summaries result item.

=head1 ATTRIBUTES


=head2 CaptureTime => Str

  The time OpsItem data was captured.


=head2 Content => ArrayRef[L<Paws::SSM::OpsEntityItemEntry>]

  The detailed data content for an OpsItem summaries result item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

