# Generated from default/object.tt
package Paws::Personalize::SolutionVersionSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has SolutionVersionArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::Personalize::SolutionVersionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::SolutionVersionSummary object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::SolutionVersionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Provides a summary of the properties of a solution version. For a
complete listing, call the DescribeSolutionVersion API.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The date and time (in Unix time) that this version of a solution was
created.


=head2 FailureReason => Str

  If a solution version fails, the reason behind the failure.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the solution version was last
updated.


=head2 SolutionVersionArn => Str

  The Amazon Resource Name (ARN) of the solution version.


=head2 Status => Str

  The status of the solution version.

A solution version can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

