
package Paws::IoT::AssociateTargetsWithJob;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targets', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateTargetsWithJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}/targets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::AssociateTargetsWithJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AssociateTargetsWithJob - Arguments for method AssociateTargetsWithJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateTargetsWithJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method AssociateTargetsWithJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateTargetsWithJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $AssociateTargetsWithJobResponse = $iot->AssociateTargetsWithJob(
      JobId   => 'MyJobId',
      Targets => [ 'MyTargetArn', ... ],
      Comment => 'MyComment',              # OPTIONAL
    );

    # Results:
    my $Description = $AssociateTargetsWithJobResponse->Description;
    my $JobArn      = $AssociateTargetsWithJobResponse->JobArn;
    my $JobId       = $AssociateTargetsWithJobResponse->JobId;

    # Returns a L<Paws::IoT::AssociateTargetsWithJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/AssociateTargetsWithJob>

=head1 ATTRIBUTES


=head2 Comment => Str

An optional comment string describing why the job was associated with
the targets.



=head2 B<REQUIRED> JobId => Str

The unique identifier you assigned to this job when it was created.



=head2 B<REQUIRED> Targets => ArrayRef[Str|Undef]

A list of thing group ARNs that define the targets of the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateTargetsWithJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

