
package Paws::FraudDetector::PutEventType;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EntityTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'entityTypes' , required => 1);
  has EventVariables => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'eventVariables' , required => 1);
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'labels' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEventType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::PutEventTypeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::PutEventType - Arguments for method PutEventType on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEventType on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method PutEventType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEventType.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $PutEventTypeResult = $frauddetector->PutEventType(
      EntityTypes    => [ 'Mystring', ... ],
      EventVariables => [ 'Mystring', ... ],
      Name           => 'Myidentifier',
      Description => 'Mydescription',        # OPTIONAL
      Labels      => [ 'Mystring', ... ],    # OPTIONAL
      Tags        => [
        {
          Key   => 'MytagKey',               # min: 1, max: 128
          Value => 'MytagValue',             # max: 256

        },
        ...
      ],                                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/PutEventType>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the event type.



=head2 B<REQUIRED> EntityTypes => ArrayRef[Str|Undef]

The entity type for the event type. Example entity types: customer,
merchant, account.



=head2 B<REQUIRED> EventVariables => ArrayRef[Str|Undef]

The event type variables.



=head2 Labels => ArrayRef[Str|Undef]

The event type labels.



=head2 B<REQUIRED> Name => Str

The name.



=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of key and value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEventType in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

