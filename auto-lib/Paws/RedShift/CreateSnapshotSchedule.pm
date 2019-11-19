# Generated from callargs_class.tt

package Paws::RedShift::CreateSnapshotSchedule;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef Undef/;
  use Paws::RedShift::Types qw/RedShift_Tag/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has NextInvocations => (is => 'ro', isa => Int, predicate => 1);
  has ScheduleDefinitions => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ScheduleDescription => (is => 'ro', isa => Str, predicate => 1);
  has ScheduleIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSnapshotSchedule');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RedShift::SnapshotSchedule');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateSnapshotScheduleResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScheduleIdentifier' => {
                                         'type' => 'Str'
                                       },
               'ScheduleDescription' => {
                                          'type' => 'Str'
                                        },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'NextInvocations' => {
                                      'type' => 'Int'
                                    },
               'ScheduleDefinitions' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'Tags' => {
                           'type' => 'ArrayRef[RedShift_Tag]',
                           'class' => 'Paws::RedShift::Tag'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateSnapshotSchedule - Arguments for method CreateSnapshotSchedule on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshotSchedule on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateSnapshotSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshotSchedule.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $SnapshotSchedule = $redshift->CreateSnapshotSchedule(
      DryRun              => 1,                      # OPTIONAL
      NextInvocations     => 1,                      # OPTIONAL
      ScheduleDefinitions => [ 'MyString', ... ],    # OPTIONAL
      ScheduleDescription => 'MyString',             # OPTIONAL
      ScheduleIdentifier  => 'MyString',             # OPTIONAL
      Tags                => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                             # OPTIONAL
    );

    # Results:
    my $AssociatedClusterCount = $SnapshotSchedule->AssociatedClusterCount;
    my $AssociatedClusters     = $SnapshotSchedule->AssociatedClusters;
    my $NextInvocations        = $SnapshotSchedule->NextInvocations;
    my $ScheduleDefinitions    = $SnapshotSchedule->ScheduleDefinitions;
    my $ScheduleDescription    = $SnapshotSchedule->ScheduleDescription;
    my $ScheduleIdentifier     = $SnapshotSchedule->ScheduleIdentifier;
    my $Tags                   = $SnapshotSchedule->Tags;

    # Returns a L<Paws::RedShift::SnapshotSchedule> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateSnapshotSchedule>

=head1 ATTRIBUTES


=head2 DryRun => Bool





=head2 NextInvocations => Int





=head2 ScheduleDefinitions => ArrayRef[Str|Undef]

The definition of the snapshot schedule. The definition is made up of
schedule expressions, for example "cron(30 12 *)" or "rate(12 hours)".



=head2 ScheduleDescription => Str

The description of the snapshot schedule.



=head2 ScheduleIdentifier => Str

A unique identifier for a snapshot schedule. Only alphanumeric
characters are allowed for the identifier.



=head2 Tags => ArrayRef[RedShift_Tag]

An optional set of tags you can use to search for the schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshotSchedule in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

