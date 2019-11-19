# Generated from default/object.tt
package Paws::Personalize::CampaignSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CampaignArn => (is => 'ro', isa => Str);
  has CreationDateTime => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FailureReason' => 'failureReason',
                       'Name' => 'name',
                       'CreationDateTime' => 'creationDateTime',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CampaignArn' => 'campaignArn',
                       'Status' => 'status'
                     },
  'types' => {
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'CampaignArn' => {
                                  'type' => 'Str'
                                },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'Status' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CampaignSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::CampaignSummary object:

  $service_obj->Method(Att1 => { CampaignArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::CampaignSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CampaignArn

=head1 DESCRIPTION

Provides a summary of the properties of a campaign. For a complete
listing, call the DescribeCampaign API.

=head1 ATTRIBUTES


=head2 CampaignArn => Str

  The Amazon Resource Name (ARN) of the campaign.


=head2 CreationDateTime => Str

  The date and time (in Unix time) that the campaign was created.


=head2 FailureReason => Str

  If a campaign fails, the reason behind the failure.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the campaign was last updated.


=head2 Name => Str

  The name of the campaign.


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

