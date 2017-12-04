package Paws::OpsWorks::ReportedOs;
  use Moose;
  has Family => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ReportedOs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::ReportedOs object:

  $service_obj->Method(Att1 => { Family => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::ReportedOs object:

  $result = $service_obj->Method(...);
  $result->Att1->Family

=head1 DESCRIPTION

A registered instance's reported operating system.

=head1 ATTRIBUTES


=head2 Family => Str

  The operating system family.


=head2 Name => Str

  The operating system name.


=head2 Version => Str

  The operating system version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

