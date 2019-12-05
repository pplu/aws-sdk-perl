package Paws::ImageBuilder::Distribution;
  use Moose;
  has AmiDistributionConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::AmiDistributionConfiguration', request_name => 'amiDistributionConfiguration', traits => ['NameInRequest']);
  has LicenseConfigurationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'licenseConfigurationArns', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::Distribution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::Distribution object:

  $service_obj->Method(Att1 => { AmiDistributionConfiguration => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::Distribution object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiDistributionConfiguration

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmiDistributionConfiguration => L<Paws::ImageBuilder::AmiDistributionConfiguration>

  


=head2 LicenseConfigurationArns => ArrayRef[Str|Undef]

  


=head2 B<REQUIRED> Region => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

