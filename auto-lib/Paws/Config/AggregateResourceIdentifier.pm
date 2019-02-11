package Paws::Config::AggregateResourceIdentifier;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has SourceAccountId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregateResourceIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregateResourceIdentifier object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., SourceRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregateResourceIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

The details that identify a resource that is collected by AWS Config
aggregator, including the resource type, ID, (if available) the custom
resource name, the source account, and source region.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

  The ID of the AWS resource.


=head2 ResourceName => Str

  The name of the AWS resource.


=head2 B<REQUIRED> ResourceType => Str

  The type of the AWS resource.


=head2 B<REQUIRED> SourceAccountId => Str

  The 12-digit account ID of the source account.


=head2 B<REQUIRED> SourceRegion => Str

  The source region where data is aggregated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

