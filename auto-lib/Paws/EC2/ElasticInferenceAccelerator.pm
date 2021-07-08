package Paws::EC2::ElasticInferenceAccelerator;
  use Moose;
  has Count => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ElasticInferenceAccelerator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ElasticInferenceAccelerator object:

  $service_obj->Method(Att1 => { Count => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ElasticInferenceAccelerator object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Count => Int

The number of elastic inference accelerators to attach to the instance.

Default: 1


=head2 B<REQUIRED> Type => Str

The type of elastic inference accelerator. The possible values are
C<eia1.medium>, C<eia1.large>, C<eia1.xlarge>, C<eia2.medium>,
C<eia2.large>, and C<eia2.xlarge>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
