package Paws::ImageBuilder::DistributionConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has DateCreated => (is => 'ro', isa => 'Str', request_name => 'dateCreated', traits => ['NameInRequest']);
  has DateUpdated => (is => 'ro', isa => 'Str', request_name => 'dateUpdated', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Distributions => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Distribution]', request_name => 'distributions', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has TimeoutMinutes => (is => 'ro', isa => 'Int', request_name => 'timeoutMinutes', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DistributionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::DistributionConfiguration object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TimeoutMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::DistributionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A distribution configuration.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the distribution configuration.


=head2 DateCreated => Str

  The date on which this distribution configuration was created.


=head2 DateUpdated => Str

  The date on which this distribution configuration was last updated.


=head2 Description => Str

  The description of the distribution configuration.


=head2 Distributions => ArrayRef[L<Paws::ImageBuilder::Distribution>]

  The distributions of the distribution configuration.


=head2 Name => Str

  The name of the distribution configuration.


=head2 Tags => L<Paws::ImageBuilder::TagMap>

  The tags of the distribution configuration.


=head2 B<REQUIRED> TimeoutMinutes => Int

  The maximum duration in minutes for this distribution configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

