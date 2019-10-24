# Generated from default/object.tt
package Paws::Personalize::CampaignUpdateSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Personalize::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has MinProvisionedTPS => (is => 'ro', isa => Int);
  has SolutionVersionArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MinProvisionedTPS' => {
                                        'type' => 'Int'
                                      },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Status' => {
                             'type' => 'Str'
                           },
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'MinProvisionedTPS' => 'minProvisionedTPS',
                       'FailureReason' => 'failureReason',
                       'Status' => 'status',
                       'SolutionVersionArn' => 'solutionVersionArn',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CreationDateTime' => 'creationDateTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CampaignUpdateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::CampaignUpdateSummary object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::CampaignUpdateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Provides a summary of the properties of a campaign update. For a
complete listing, call the DescribeCampaign API.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The date and time (in Unix time) that the campaign update was created.


=head2 FailureReason => Str

  If a campaign update fails, the reason behind the failure.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the campaign update was last
updated.


=head2 MinProvisionedTPS => Int

  Specifies the requested minimum provisioned transactions
(recommendations) per second that Amazon Personalize will support.


=head2 SolutionVersionArn => Str

  The Amazon Resource Name (ARN) of the deployed solution version.


=head2 Status => Str

  The status of the campaign update.

A campaign update can be in one of the following states:

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

