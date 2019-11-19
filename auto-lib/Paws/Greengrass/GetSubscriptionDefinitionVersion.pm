
package Paws::Greengrass::GetSubscriptionDefinitionVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SubscriptionDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SubscriptionDefinitionVersionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetSubscriptionDefinitionVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::GetSubscriptionDefinitionVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SubscriptionDefinitionId' => 1,
                    'SubscriptionDefinitionVersionId' => 1
                  },
  'ParamInQuery' => {
                      'NextToken' => 'NextToken'
                    },
  'types' => {
               'SubscriptionDefinitionId' => {
                                               'type' => 'Str'
                                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SubscriptionDefinitionVersionId' => {
                                                      'type' => 'Str'
                                                    }
             },
  'ParamInURI' => {
                    'SubscriptionDefinitionVersionId' => 'SubscriptionDefinitionVersionId',
                    'SubscriptionDefinitionId' => 'SubscriptionDefinitionId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetSubscriptionDefinitionVersion - Arguments for method GetSubscriptionDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscriptionDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetSubscriptionDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscriptionDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetSubscriptionDefinitionVersionResponse =
      $greengrass->GetSubscriptionDefinitionVersion(
      SubscriptionDefinitionId        => 'My__string',
      SubscriptionDefinitionVersionId => 'My__string',
      NextToken                       => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Arn = $GetSubscriptionDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $GetSubscriptionDefinitionVersionResponse->CreationTimestamp;
    my $Definition = $GetSubscriptionDefinitionVersionResponse->Definition;
    my $Id         = $GetSubscriptionDefinitionVersionResponse->Id;
    my $NextToken  = $GetSubscriptionDefinitionVersionResponse->NextToken;
    my $Version    = $GetSubscriptionDefinitionVersionResponse->Version;

# Returns a L<Paws::Greengrass::GetSubscriptionDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetSubscriptionDefinitionVersion>

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.



=head2 B<REQUIRED> SubscriptionDefinitionId => Str

The ID of the subscription definition.



=head2 B<REQUIRED> SubscriptionDefinitionVersionId => Str

The ID of the subscription definition version. This value maps to the
''Version'' property of the corresponding ''VersionInformation''
object, which is returned by ''ListSubscriptionDefinitionVersions''
requests. If the version is the last one that was associated with a
subscription definition, the value also maps to the ''LatestVersion''
property of the corresponding ''DefinitionInformation'' object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscriptionDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

