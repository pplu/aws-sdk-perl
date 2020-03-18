package Paws::EMR::BlockPublicAccessConfigurationMetadata;
  use Moose;
  has CreatedByArn => (is => 'ro', isa => 'Str', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::BlockPublicAccessConfigurationMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::BlockPublicAccessConfigurationMetadata object:

  $service_obj->Method(Att1 => { CreatedByArn => $value, ..., CreationDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::BlockPublicAccessConfigurationMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedByArn

=head1 DESCRIPTION

Properties that describe the AWS principal that created the
C<BlockPublicAccessConfiguration> using the
C<PutBlockPublicAccessConfiguration> action as well as the date and
time that the configuration was created. Each time a configuration for
block public access is updated, Amazon EMR updates this metadata.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedByArn => Str

  The Amazon Resource Name that created or last modified the
configuration.


=head2 B<REQUIRED> CreationDateTime => Str

  The date and time that the configuration was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

