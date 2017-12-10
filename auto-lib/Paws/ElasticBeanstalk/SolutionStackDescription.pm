package Paws::ElasticBeanstalk::SolutionStackDescription;
  use Moose;
  has PermittedFileTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::SolutionStackDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::SolutionStackDescription object:

  $service_obj->Method(Att1 => { PermittedFileTypes => $value, ..., SolutionStackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::SolutionStackDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->PermittedFileTypes

=head1 DESCRIPTION

Describes the solution stack.

=head1 ATTRIBUTES


=head2 PermittedFileTypes => ArrayRef[Str|Undef]

  The permitted file types allowed for a solution stack.


=head2 SolutionStackName => Str

  The name of the solution stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

