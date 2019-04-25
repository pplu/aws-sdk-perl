package Paws::S3::SelectObjectContentEventStream;
  use Moose;
  has Cont => (is => 'ro', isa => 'Paws::S3::ContinuationEvent');
  has End => (is => 'ro', isa => 'Paws::S3::EndEvent');
  has Progress => (is => 'ro', isa => 'Paws::S3::ProgressEvent');
  has Records => (is => 'ro', isa => 'Paws::S3::RecordsEvent');
  has Stats => (is => 'ro', isa => 'Paws::S3::StatsEvent');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SelectObjectContentEventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SelectObjectContentEventStream object:

  $service_obj->Method(Att1 => { Cont => $value, ..., Stats => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SelectObjectContentEventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->Cont

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cont => L<Paws::S3::ContinuationEvent>

  The Continuation Event.


=head2 End => L<Paws::S3::EndEvent>

  The End Event.


=head2 Progress => L<Paws::S3::ProgressEvent>

  The Progress Event.


=head2 Records => L<Paws::S3::RecordsEvent>

  The Records Event.


=head2 Stats => L<Paws::S3::StatsEvent>

  The Stats Event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

