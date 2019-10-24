# Generated from default/object.tt
package Paws::Personalize::Campaign;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Personalize::Types qw/Personalize_CampaignUpdateSummary/;
  has CampaignArn => (is => 'ro', isa => Str);
  has CreationDateTime => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has LatestCampaignUpdate => (is => 'ro', isa => Personalize_CampaignUpdateSummary);
  has MinProvisionedTPS => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has SolutionVersionArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MinProvisionedTPS' => {
                                        'type' => 'Int'
                                      },
               'Status' => {
                             'type' => 'Str'
                           },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'LatestCampaignUpdate' => {
                                           'class' => 'Paws::Personalize::CampaignUpdateSummary',
                                           'type' => 'Personalize_CampaignUpdateSummary'
                                         },
               'CampaignArn' => {
                                  'type' => 'Str'
                                },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'MinProvisionedTPS' => 'minProvisionedTPS',
                       'Status' => 'status',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CreationDateTime' => 'creationDateTime',
                       'LatestCampaignUpdate' => 'latestCampaignUpdate',
                       'CampaignArn' => 'campaignArn',
                       'FailureReason' => 'failureReason',
                       'SolutionVersionArn' => 'solutionVersionArn',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::Campaign

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::Campaign object:

  $service_obj->Method(Att1 => { CampaignArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::Campaign object:

  $result = $service_obj->Method(...);
  $result->Att1->CampaignArn

=head1 DESCRIPTION

Describes a deployed solution version, otherwise known as a campaign.
For more information on campaigns, see CreateCampaign.

=head1 ATTRIBUTES


=head2 CampaignArn => Str

  The Amazon Resource Name (ARN) of the campaign.


=head2 CreationDateTime => Str

  The date and time (in Unix format) that the campaign was created.


=head2 FailureReason => Str

  If a campaign fails, the reason behind the failure.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix format) that the campaign was last updated.


=head2 LatestCampaignUpdate => Personalize_CampaignUpdateSummary

  


=head2 MinProvisionedTPS => Int

  Specifies the requested minimum provisioned transactions
(recommendations) per second.


=head2 Name => Str

  The name of the campaign.


=head2 SolutionVersionArn => Str

  The Amazon Resource Name (ARN) of a specific version of the solution.


=head2 Status => Str

  The status of the campaign.

A campaign can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

