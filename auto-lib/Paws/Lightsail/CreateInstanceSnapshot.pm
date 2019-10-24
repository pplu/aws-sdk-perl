# Generated from json/callargs_class.tt

package Paws::Lightsail::CreateInstanceSnapshot;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Tag/;
  has InstanceName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InstanceSnapshotName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateInstanceSnapshot');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::CreateInstanceSnapshotResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceName' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         },
               'InstanceSnapshotName' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'InstanceName' => 'instanceName',
                       'Tags' => 'tags',
                       'InstanceSnapshotName' => 'instanceSnapshotName'
                     },
  'IsRequired' => {
                    'InstanceName' => 1,
                    'InstanceSnapshotName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateInstanceSnapshot - Arguments for method CreateInstanceSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstanceSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateInstanceSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstanceSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateInstanceSnapshotResult = $lightsail->CreateInstanceSnapshot(
      InstanceName         => 'MyResourceName',
      InstanceSnapshotName => 'MyResourceName',
      Tags                 => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $Operations = $CreateInstanceSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CreateInstanceSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateInstanceSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The Lightsail instance on which to base your snapshot.



=head2 B<REQUIRED> InstanceSnapshotName => Str

The name for your new snapshot.



=head2 Tags => ArrayRef[Lightsail_Tag]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstanceSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

