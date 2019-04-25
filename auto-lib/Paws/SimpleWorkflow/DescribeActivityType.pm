
package Paws::SimpleWorkflow::DescribeActivityType;
  use Moose;
  has ActivityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', traits => ['NameInRequest'], request_name => 'activityType' , required => 1);
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivityType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::ActivityTypeDetail');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DescribeActivityType - Arguments for method DescribeActivityType on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeActivityType on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method DescribeActivityType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeActivityType.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $ActivityTypeDetail = $swf->DescribeActivityType(
      ActivityType => {
        Name    => 'MyName',       # min: 1, max: 256
        Version => 'MyVersion',    # min: 1, max: 64

      },
      Domain => 'MyDomainName',

    );

    # Results:
    my $Configuration = $ActivityTypeDetail->Configuration;
    my $TypeInfo      = $ActivityTypeDetail->TypeInfo;

    # Returns a L<Paws::SimpleWorkflow::ActivityTypeDetail> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/DescribeActivityType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityType => L<Paws::SimpleWorkflow::ActivityType>

The activity type to get information about. Activity types are
identified by the C<name> and C<version> that were supplied when the
activity was registered.



=head2 B<REQUIRED> Domain => Str

The name of the domain in which the activity type is registered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeActivityType in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

