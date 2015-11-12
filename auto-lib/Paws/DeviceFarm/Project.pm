package Paws::DeviceFarm::Project;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', xmlname => 'created', request_name => 'created', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Project

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Project object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Project object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents an operating-system neutral workspace for running and
managing tests.

=head1 ATTRIBUTES


=head2 Arn => Str

  The project's ARN.


=head2 Created => Str

  When the project was created.


=head2 Name => Str

  The project's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

