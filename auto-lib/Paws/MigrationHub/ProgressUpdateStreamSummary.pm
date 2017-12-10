package Paws::MigrationHub::ProgressUpdateStreamSummary;
  use Moose;
  has ProgressUpdateStreamName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ProgressUpdateStreamSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHub::ProgressUpdateStreamSummary object:

  $service_obj->Method(Att1 => { ProgressUpdateStreamName => $value, ..., ProgressUpdateStreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHub::ProgressUpdateStreamSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ProgressUpdateStreamName

=head1 DESCRIPTION

Summary of the AWS resource used for access control that is implicitly
linked to your AWS account.

=head1 ATTRIBUTES


=head2 ProgressUpdateStreamName => Str

  The name of the ProgressUpdateStream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

