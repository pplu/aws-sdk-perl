package Paws::Glue::Action;
  use Moose;
  has Arguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has JobName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Action object:

  $service_obj->Method(Att1 => { Arguments => $value, ..., JobName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->Arguments

=head1 DESCRIPTION

Defines an action to be initiated by a trigger.

=head1 ATTRIBUTES


=head2 Arguments => L<Paws::Glue::GenericMap>

  Arguments to be passed to the job.


=head2 JobName => Str

  The name of a job to be executed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

