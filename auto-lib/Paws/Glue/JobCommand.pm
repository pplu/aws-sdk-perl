package Paws::Glue::JobCommand;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ScriptLocation => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JobCommand

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JobCommand object:

  $service_obj->Method(Att1 => { Name => $value, ..., ScriptLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JobCommand object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies code executed when a job is run.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the job command: this must be C<glueetl>, for an Apache
Spark ETL job, or C<pythonshell>, for a Python shell job.


=head2 ScriptLocation => Str

  Specifies the S3 path to a script that executes a job (required).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

