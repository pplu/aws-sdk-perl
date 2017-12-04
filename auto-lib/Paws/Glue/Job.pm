package Paws::Glue::Job;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Command => (is => 'ro', isa => 'Paws::Glue::JobCommand');
  has Connections => (is => 'ro', isa => 'Paws::Glue::ConnectionsList');
  has CreatedOn => (is => 'ro', isa => 'Str');
  has DefaultArguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionProperty => (is => 'ro', isa => 'Paws::Glue::ExecutionProperty');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Job object:

  $service_obj->Method(Att1 => { AllocatedCapacity => $value, ..., Role => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedCapacity

=head1 DESCRIPTION

Specifies a job in the Data Catalog.

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

  The number of capacity units allocated to this job.


=head2 Command => L<Paws::Glue::JobCommand>

  The JobCommand that executes this job.


=head2 Connections => L<Paws::Glue::ConnectionsList>

  The connections used for this job.


=head2 CreatedOn => Str

  The time and date that this job specification was created.


=head2 DefaultArguments => L<Paws::Glue::GenericMap>

  The default parameters for this job.


=head2 Description => Str

  Description of this job.


=head2 ExecutionProperty => L<Paws::Glue::ExecutionProperty>

  An ExecutionProperty specifying the maximum number of concurrent runs
allowed for this job.


=head2 LastModifiedOn => Str

  The last point in time when this job specification was modified.


=head2 LogUri => Str

  This field is reserved for future use.


=head2 MaxRetries => Int

  The maximum number of times to retry this job if it fails.


=head2 Name => Str

  The name you assign to this job.


=head2 Role => Str

  The role associated with this job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

