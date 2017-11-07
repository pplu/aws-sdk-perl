package Paws::Glue::ConnectionsList;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ConnectionsList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ConnectionsList object:

  $service_obj->Method(Att1 => { Connections => $value, ..., Connections => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ConnectionsList object:

  $result = $service_obj->Method(...);
  $result->Att1->Connections

=head1 DESCRIPTION

Specifies the connections used by a job.

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[Str|Undef]

  A list of connections used by the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

