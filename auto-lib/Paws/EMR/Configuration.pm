package Paws::EMR::Configuration;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has Properties => (is => 'ro', isa => 'Paws::EMR::StringMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Configuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Configuration object:

  $service_obj->Method(Att1 => { Classification => $value, ..., Properties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Configuration object:

  $result = $service_obj->Method(...);
  $result->Att1->Classification

=head1 DESCRIPTION

Amazon EMR releases 4.x or later.

Specifies a hardware and software configuration of the EMR cluster.
This includes configurations for applications and software bundled with
Amazon EMR. The Configuration object is a JSON object which is defined
by a classification and a set of properties. Configurations can be
nested, so a configuration may have its own Configuration objects
listed.

=head1 ATTRIBUTES


=head2 Classification => Str

  The classification of a configuration. For more information see, Amazon
EMR Configurations.


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  A list of configurations you apply to this configuration object.


=head2 Properties => L<Paws::EMR::StringMap>

  A set of properties supplied to the Configuration object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

