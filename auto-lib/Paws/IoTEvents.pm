package Paws::IoTEvents;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'iotevents' }
  sub signing_name { 'iotevents' }
  sub version { '2018-07-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateDetectorModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::CreateDetectorModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::CreateInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDetectorModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::DeleteDetectorModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::DeleteInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDetectorModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::DescribeDetectorModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::DescribeInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::DescribeLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDetectorModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::ListDetectorModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDetectorModelVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::ListDetectorModelVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInputs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::ListInputs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::PutLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDetectorModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::UpdateDetectorModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEvents::UpdateInput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateDetectorModel CreateInput DeleteDetectorModel DeleteInput DescribeDetectorModel DescribeInput DescribeLoggingOptions ListDetectorModels ListDetectorModelVersions ListInputs ListTagsForResource PutLoggingOptions TagResource UntagResource UpdateDetectorModel UpdateInput / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents - Perl Interface to AWS AWS IoT Events

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTEvents');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS IoT Events monitors your equipment or device fleets for failures or
changes in operation, and triggers actions when such events occur. AWS
IoT Events API commands enable you to create, read, update and delete
inputs and detector models, and to list their versions.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents-2018-07-27>


=head1 METHODS

=head2 CreateDetectorModel

=over

=item DetectorModelDefinition => IoTEvents_DetectorModelDefinition

=item DetectorModelName => Str

=item RoleArn => Str

=item [DetectorModelDescription => Str]

=item [EvaluationMethod => Str]

=item [Key => Str]

=item [Tags => ArrayRef[IoTEvents_Tag]]


=back

Each argument is described in detail in: L<Paws::IoTEvents::CreateDetectorModel>

Returns: a L<Paws::IoTEvents::CreateDetectorModelResponse> instance

Creates a detector model.


=head2 CreateInput

=over

=item InputDefinition => IoTEvents_InputDefinition

=item InputName => Str

=item [InputDescription => Str]

=item [Tags => ArrayRef[IoTEvents_Tag]]


=back

Each argument is described in detail in: L<Paws::IoTEvents::CreateInput>

Returns: a L<Paws::IoTEvents::CreateInputResponse> instance

Creates an input.


=head2 DeleteDetectorModel

=over

=item DetectorModelName => Str


=back

Each argument is described in detail in: L<Paws::IoTEvents::DeleteDetectorModel>

Returns: a L<Paws::IoTEvents::DeleteDetectorModelResponse> instance

Deletes a detector model. Any active instances of the detector model
are also deleted.


=head2 DeleteInput

=over

=item InputName => Str


=back

Each argument is described in detail in: L<Paws::IoTEvents::DeleteInput>

Returns: a L<Paws::IoTEvents::DeleteInputResponse> instance

Deletes an input.


=head2 DescribeDetectorModel

=over

=item DetectorModelName => Str

=item [DetectorModelVersion => Str]


=back

Each argument is described in detail in: L<Paws::IoTEvents::DescribeDetectorModel>

Returns: a L<Paws::IoTEvents::DescribeDetectorModelResponse> instance

Describes a detector model. If the C<"version"> parameter is not
specified, information about the latest version is returned.


=head2 DescribeInput

=over

=item InputName => Str


=back

Each argument is described in detail in: L<Paws::IoTEvents::DescribeInput>

Returns: a L<Paws::IoTEvents::DescribeInputResponse> instance

Describes an input.


=head2 DescribeLoggingOptions






Each argument is described in detail in: L<Paws::IoTEvents::DescribeLoggingOptions>

Returns: a L<Paws::IoTEvents::DescribeLoggingOptionsResponse> instance

Retrieves the current settings of the AWS IoT Events logging options.


=head2 ListDetectorModels

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTEvents::ListDetectorModels>

Returns: a L<Paws::IoTEvents::ListDetectorModelsResponse> instance

Lists the detector models you have created. Only the metadata
associated with each detector model is returned.


=head2 ListDetectorModelVersions

=over

=item DetectorModelName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTEvents::ListDetectorModelVersions>

Returns: a L<Paws::IoTEvents::ListDetectorModelVersionsResponse> instance

Lists all the versions of a detector model. Only the metadata
associated with each detector model version is returned.


=head2 ListInputs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTEvents::ListInputs>

Returns: a L<Paws::IoTEvents::ListInputsResponse> instance

Lists the inputs you have created.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTEvents::ListTagsForResource>

Returns: a L<Paws::IoTEvents::ListTagsForResourceResponse> instance

Lists the tags (metadata) you have assigned to the resource.


=head2 PutLoggingOptions

=over

=item LoggingOptions => IoTEvents_LoggingOptions


=back

Each argument is described in detail in: L<Paws::IoTEvents::PutLoggingOptions>

Returns: nothing

Sets or updates the AWS IoT Events logging options.

If you update the value of any C<"loggingOptions"> field, it takes up
to one minute for the change to take effect. Also, if you change the
policy attached to the role you specified in the C<"roleArn"> field
(for example, to correct an invalid policy) it takes up to five minutes
for that change to take effect.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[IoTEvents_Tag]


=back

Each argument is described in detail in: L<Paws::IoTEvents::TagResource>

Returns: a L<Paws::IoTEvents::TagResourceResponse> instance

Adds to or modifies the tags of the given resource. Tags are metadata
that can be used to manage a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTEvents::UntagResource>

Returns: a L<Paws::IoTEvents::UntagResourceResponse> instance

Removes the given tags (metadata) from the resource.


=head2 UpdateDetectorModel

=over

=item DetectorModelDefinition => IoTEvents_DetectorModelDefinition

=item DetectorModelName => Str

=item RoleArn => Str

=item [DetectorModelDescription => Str]

=item [EvaluationMethod => Str]


=back

Each argument is described in detail in: L<Paws::IoTEvents::UpdateDetectorModel>

Returns: a L<Paws::IoTEvents::UpdateDetectorModelResponse> instance

Updates a detector model. Detectors (instances) spawned by the previous
version are deleted and then re-created as new inputs arrive.


=head2 UpdateInput

=over

=item InputDefinition => IoTEvents_InputDefinition

=item InputName => Str

=item [InputDescription => Str]


=back

Each argument is described in detail in: L<Paws::IoTEvents::UpdateInput>

Returns: a L<Paws::IoTEvents::UpdateInputResponse> instance

Updates an input.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

