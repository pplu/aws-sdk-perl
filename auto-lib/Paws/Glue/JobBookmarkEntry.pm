package Paws::Glue::JobBookmarkEntry;
  use Moose;
  has Attempt => (is => 'ro', isa => 'Int');
  has JobBookmark => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has Run => (is => 'ro', isa => 'Int');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JobBookmarkEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JobBookmarkEntry object:

  $service_obj->Method(Att1 => { Attempt => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JobBookmarkEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Attempt

=head1 DESCRIPTION

Defines a point which a job can resume processing.

=head1 ATTRIBUTES


=head2 Attempt => Int

  The attempt ID number.


=head2 JobBookmark => Str

  The bookmark itself.


=head2 JobName => Str

  Name of the job in question.


=head2 Run => Int

  The run ID number.


=head2 Version => Int

  Version of the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

