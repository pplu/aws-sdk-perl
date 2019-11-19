
package Paws::EC2::ModifyInstanceEventStartTime;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has InstanceEventId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NotBefore => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyInstanceEventStartTime');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::ModifyInstanceEventStartTimeResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'NotBefore' => {
                                'type' => 'Str'
                              },
               'InstanceEventId' => {
                                      'type' => 'Str'
                                    }
             },
  'IsRequired' => {
                    'InstanceId' => 1,
                    'NotBefore' => 1,
                    'InstanceEventId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceEventStartTime - Arguments for method ModifyInstanceEventStartTime on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceEventStartTime on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceEventStartTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceEventStartTime.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceEventStartTimeResult = $ec2->ModifyInstanceEventStartTime(
      InstanceEventId => 'MyString',
      InstanceId      => 'MyInstanceId',
      NotBefore       => '1970-01-01T01:00:00',
      DryRun          => 1,                       # OPTIONAL
    );

    # Results:
    my $Event = $ModifyInstanceEventStartTimeResult->Event;

    # Returns a L<Paws::EC2::ModifyInstanceEventStartTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceEventStartTime>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceEventId => Str

The ID of the event whose date and time you are modifying.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance with the scheduled event.



=head2 B<REQUIRED> NotBefore => Str

The new date and time when the event will take place.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceEventStartTime in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

