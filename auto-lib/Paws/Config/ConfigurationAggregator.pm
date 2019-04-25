package Paws::Config::ConfigurationAggregator;
  use Moose;
  has AccountAggregationSources => (is => 'ro', isa => 'ArrayRef[Paws::Config::AccountAggregationSource]');
  has ConfigurationAggregatorArn => (is => 'ro', isa => 'Str');
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has OrganizationAggregationSource => (is => 'ro', isa => 'Paws::Config::OrganizationAggregationSource');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigurationAggregator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigurationAggregator object:

  $service_obj->Method(Att1 => { AccountAggregationSources => $value, ..., OrganizationAggregationSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigurationAggregator object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountAggregationSources

=head1 DESCRIPTION

The details about the configuration aggregator, including information
about source accounts, regions, and metadata of the aggregator.

=head1 ATTRIBUTES


=head2 AccountAggregationSources => ArrayRef[L<Paws::Config::AccountAggregationSource>]

  Provides a list of source accounts and regions to be aggregated.


=head2 ConfigurationAggregatorArn => Str

  The Amazon Resource Name (ARN) of the aggregator.


=head2 ConfigurationAggregatorName => Str

  The name of the aggregator.


=head2 CreationTime => Str

  The time stamp when the configuration aggregator was created.


=head2 LastUpdatedTime => Str

  The time of the last update.


=head2 OrganizationAggregationSource => L<Paws::Config::OrganizationAggregationSource>

  Provides an organization and list of regions to be aggregated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

