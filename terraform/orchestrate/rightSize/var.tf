variable "subscriptionID" {
  type = string
  description = "(optional) describe your variable"
}

variable "metadata" {
  type        = string
  description = "(optional) describe your variable"
  default     = <<METADATA
    {
    "category": "Compute"
    }
METADATA
}

variable "policyrule_hub" {
  type        = string
  description = "(optional) describe your variable"
  default     = <<POLICY_RULE
    {
    "if": {
        "allOf": [
            {
                "field": "type",
                "in": [
                    "Microsoft.Compute/virtualMachines",
                    "Microsoft.Compute/VirtualMachineScaleSets"
                ]
            },
            {
                "field": "Microsoft.Compute/imagePublisher",
                "equals": "MicrosoftWindowsServer"
            },
            {
                "field": "Microsoft.Compute/imageOffer",
                "equals": "WindowsServer"
            },
            {
                "field": "Microsoft.Compute/imageSKU",
                "in": [
                    "2008-R2-SP1",
                    "2008-R2-SP1-smalldisk",
                    "2008-R2-SP1-zhcn",
                    "2012-Datacenter",
                    "2012-datacenter-gensecond",
                    "2012-Datacenter-smalldisk",
                    "2012-datacenter-smalldisk-g2",
                    "2012-Datacenter-zhcn",
                    "2012-datacenter-zhcn-g2",
                    "2012-R2-Datacenter",
                    "2012-r2-datacenter-gensecond",
                    "2012-R2-Datacenter-smalldisk",
                    "2012-r2-datacenter-smalldisk-g2",
                    "2012-R2-Datacenter-zhcn",
                    "2012-r2-datacenter-zhcn-g2",
                    "2016-Datacenter",
                    "2016-datacenter-gensecond",
                    "2016-datacenter-gs",
                    "2016-Datacenter-Server-Core",
                    "2016-datacenter-server-core-g2",
                    "2016-Datacenter-Server-Core-smalldisk",
                    "2016-datacenter-server-core-smalldisk-g2",
                    "2016-Datacenter-smalldisk",
                    "2016-datacenter-smalldisk-g2",
                    "2016-Datacenter-with-Containers",
                    "2016-datacenter-with-containers-g2",
                    "2016-datacenter-with-containers-gs",
                    "2016-Datacenter-with-RDSH",
                    "2016-Datacenter-zhcn",
                    "2016-datacenter-zhcn-g2",
                    "2019-Datacenter",
                    "2019-Datacenter-Core",
                    "2019-datacenter-core-g2",
                    "2019-Datacenter-Core-smalldisk",
                    "2019-datacenter-core-smalldisk-g2",
                    "2019-Datacenter-Core-with-Containers",
                    "2019-datacenter-core-with-containers-g2",
                    "2019-Datacenter-Core-with-Containers-smalldisk",
                    "2019-datacenter-core-with-containers-smalldisk-g2",
                    "2019-datacenter-gensecond",
                    "2019-datacenter-gs",
                    "2019-Datacenter-smalldisk",
                    "2019-datacenter-smalldisk-g2",
                    "2019-Datacenter-with-Containers",
                    "2019-datacenter-with-containers-g2",
                    "2019-datacenter-with-containers-gs",
                    "2019-Datacenter-with-Containers-smalldisk",
                    "2019-datacenter-with-containers-smalldisk-g2",
                    "2019-Datacenter-zhcn",
                    "2019-datacenter-zhcn-g2",
                    "Datacenter-Core-1803-with-Containers-smalldisk",
                    "datacenter-core-1803-with-containers-smalldisk-g2",
                    "Datacenter-Core-1809-with-Containers-smalldisk",
                    "datacenter-core-1809-with-containers-smalldisk-g2",
                    "Datacenter-Core-1903-with-Containers-smalldisk",
                    "datacenter-core-1903-with-containers-smalldisk-g2",
                    "datacenter-core-1909-with-containers-smalldisk",
                    "datacenter-core-1909-with-containers-smalldisk-g1",
                    "datacenter-core-1909-with-containers-smalldisk-g2",
                    "datacenter-core-2004-with-containers-smalldisk",
                    "datacenter-core-2004-with-containers-smalldisk-g2"
                ]
            },
            {
                "field": "Microsoft.Compute/licenseType",
                "notEquals": "Windows_Server"
            }
        ]
    },
    "then": {
        "effect": "Audit"
    }
    }
POLICY_RULE
}


variable "policyrule_rightsku" {
  type        = string
  description = "(optional) describe your variable"
  default     = <<POLICY_RULE
    {
    "if": {
    "allOf": [
        {
        "field": "type",
        "equals": "Microsoft.Compute/virtualMachines"
        },
        {
        "not": {
            "field": "Microsoft.Compute/virtualMachines/sku.name",
            "in": "[parameters('listOfAllowedSKUs')]"
        }
        }
    ]
    },
    "then": {
    "effect": "Audit"
    }
    }
POLICY_RULE
}

variable "parameters_rightsku" {
  type        = string
  description = "(optional) describe your variable"
  default     = <<PARAMETERS
    {
    "listOfAllowedSKUs": {
        "type": "Array",
        "metadata": {
          "displayName": "Allowed Size SKUs",
          "description": "The list of size SKUs that can be specified for virtual machines.",
          "strongType": "VMSKUs"
        }
    }
  }
PARAMETERS
}

variable "parameters_listofAllowedSKUs" {
  type        = string
  description = "(optional) describe your variable"
  default     = <<PARAMETERS
    {
    "listOfAllowedSKUs": {
        "type": "Array",
        "defaultValue": ["Standard_D1_v2","Standard_D2s_v3","Standard_D4s_v3","Standard_D8s_v3","Standard_E2s_v3","Standard_E4s_v3","Standard_E8s_v3"]
    }
  }
PARAMETERS
}


