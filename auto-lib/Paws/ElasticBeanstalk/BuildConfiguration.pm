package Paws::ElasticBeanstalk::BuildConfiguration;
  use Moose;
  has ArtifactName => (is => 'ro', isa => 'Str');
  has CodeBuildServiceRole => (is => 'ro', isa => 'Str', required => 1);
  has ComputeType => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Str', required => 1);
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::BuildConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::BuildConfiguration object:

  $service_obj->Method(Att1 => { ArtifactName => $value, ..., TimeoutInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::BuildConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ArtifactName => Str

  


=head2 B<REQUIRED> CodeBuildServiceRole => Str

  


=head2 ComputeType => Str

  


=head2 B<REQUIRED> Image => Str

  


=head2 TimeoutInMinutes => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

