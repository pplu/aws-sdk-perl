# Generated from json/callargs_class.tt

package Paws::Config::PutConfigurationAggregator;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_Tag Config_AccountAggregationSource Config_OrganizationAggregationSource/;
  has AccountAggregationSources => (is => 'ro', isa => ArrayRef[Config_AccountAggregationSource], predicate => 1);
  has ConfigurationAggregatorName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OrganizationAggregationSource => (is => 'ro', isa => Config_OrganizationAggregationSource, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Config_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutConfigurationAggregator');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::PutConfigurationAggregatorResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ConfigurationAggregatorName' => 1
                  },
  'types' => {
               'AccountAggregationSources' => {
                                                'type' => 'ArrayRef[Config_AccountAggregationSource]',
                                                'class' => 'Paws::Config::AccountAggregationSource'
                                              },
               'ConfigurationAggregatorName' => {
                                                  'type' => 'Str'
                                                },
               'OrganizationAggregationSource' => {
                                                    'class' => 'Paws::Config::OrganizationAggregationSource',
                                                    'type' => 'Config_OrganizationAggregationSource'
                                                  },
               'Tags' => {
                           'type' => 'ArrayRef[Config_Tag]',
                           'class' => 'Paws::Config::Tag'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConfigurationAggregator - Arguments for method PutConfigurationAggregator on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationAggregator on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutConfigurationAggregator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationAggregator.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutConfigurationAggregatorResponse =
      $config->PutConfigurationAggregator(
      ConfigurationAggregatorName => 'MyConfigurationAggregatorName',
      AccountAggregationSources   => [
        {
          AccountIds    => [ 'MyAccountId', ... ],    # min: 1
          AllAwsRegions => 1,                         # OPTIONAL
          AwsRegions    => [ 'MyString', ... ],       # min: 1; OPTIONAL
        },
        ...
      ],                                              # OPTIONAL
      OrganizationAggregationSource => {
        RoleArn       => 'MyString',
        AllAwsRegions => 1,                           # OPTIONAL
        AwsRegions    => [ 'MyString', ... ],         # min: 1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      );

    # Results:
    my $ConfigurationAggregator =
      $PutConfigurationAggregatorResponse->ConfigurationAggregator;

    # Returns a L<Paws::Config::PutConfigurationAggregatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutConfigurationAggregator>

=head1 ATTRIBUTES


=head2 AccountAggregationSources => ArrayRef[Config_AccountAggregationSource]

A list of AccountAggregationSource object.



=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 OrganizationAggregationSource => Config_OrganizationAggregationSource

An OrganizationAggregationSource object.



=head2 Tags => ArrayRef[Config_Tag]

An array of tag object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationAggregator in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

